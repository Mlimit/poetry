package com.jin.poetry.realm;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.jin.poetry.domain.User;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jin.poetry.common.ActiverUser;
import com.jin.poetry.common.Constast;
import com.jin.poetry.domain.Permission;
import com.jin.poetry.service.PermissionService;
import com.jin.poetry.service.UserService;

public class UserRealm extends AuthorizingRealm {

	@Autowired
	@Lazy  //只有使用的时候才会加载 
	private UserService userService;
	
	@Autowired
	@Lazy
	private PermissionService permissionService;


	@Override
	public String getName() {
		return this.getClass().getSimpleName();
	}

	/**
	 * 认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {

		QueryWrapper<User> queryWrapper = new QueryWrapper<>();
		queryWrapper.eq("loginname", token.getPrincipal().toString());
		User User = userService.getOne(queryWrapper);
		if (null != User) {
			ActiverUser activerUser = new ActiverUser();
			activerUser.setUser(User);

			//查询所有菜单
			QueryWrapper<Permission> qw=new QueryWrapper<>();
			//设置只能查询菜单
			qw.eq("type",Constast.TYPE_PERMISSION);
			qw.eq("available", Constast.AVAILABLE_TRUE);

			//根据用户ID+角色+权限去查询
			//根据角色ID取到权限和菜单ID
			Set<Integer> pids=new HashSet<>();
			List<Permission> list=new ArrayList<>();
			//根据角色ID查询权限
			if(pids.size()>0) {
				qw.in("id", pids);
				list=permissionService.list(qw);
			}
			List<String> percodes=new ArrayList<>();
			for (Permission permission : list) {
				percodes.add(permission.getPercode());
			}
			//放到
			activerUser.setPermissions(percodes);

			ByteSource credentialsSalt = ByteSource.Util.bytes(User.getSalt());
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(activerUser, User.getPwd(), credentialsSalt,
					this.getName());
			return info;
		}
		return null;
	}

	/**
	 * 授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		ActiverUser activerUser=(ActiverUser) principals.getPrimaryPrincipal();
		User User =activerUser.getUser();
		List<String> permissions = activerUser.getPermissions();
		if(User.getType()==Constast.USER_TYPE_SUPER) {
			authorizationInfo.addStringPermission("*:*");
		}else {
			if(null!=permissions&&permissions.size()>0) {
				authorizationInfo.addStringPermissions(permissions);
			}
		}
		return authorizationInfo;
	}

}
