package com.jin.poetry.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SystemController {

    /**
     * 跳转到登陆页面
     */
    @RequestMapping("toLogin")
    public String toLogin() {
        return "index/login";
    }

    /**
     * 跳转到首页
     */
    @RequestMapping("index")
    public String index() {
        return "index/index";
    }

    /**
     * 跳转到工作台
     */
    @RequestMapping("toDeskManager")
    public String toDeskManager() {
        return "index/deskManager";
    }

    /**
     * 跳转到密码修改
     */
    @RequestMapping("toChangePwd")
    public String toChangePwd() {
        return "user/changePwd";
    }

    /**
     * 跳转到日志管理
     */
    @RequestMapping("toLoginfoManager")
    public String toLoginfoManager() {
        return "loginfo/loginfoManager";
    }

    /**
     * 跳转到公告管理
     */
    @RequestMapping("toNoticeManager")
    public String toNoticeManager() {
        return "notice/noticeManager";
    }


    /**
     * 跳转到菜单管理
     */
    @RequestMapping("toMenuManager")
    public String toMenuManager() {
        return "menu/menuManager";
    }

    /**
     * 跳转到菜单管理-left
     */
    @RequestMapping("toMenuLeft")
    public String toMenuLeft() {
        return "menu/menuLeft";
    }


    /**
     * 跳转到菜单管理--right
     */
    @RequestMapping("toMenuRight")
    public String toMenuRight() {
        return "menu/menuRight";
    }

    /**
     * 跳转到权限管理
     */
    @RequestMapping("toPermissionManager")
    public String toPermissionManager() {
        return "permission/permissionManager";
    }

    /**
     * 跳转到权限管理-left
     */
    @RequestMapping("toPermissionLeft")
    public String toPermissionLeft() {
        return "permission/permissionLeft";
    }


    /**
     * 跳转到权限管理--right
     */
    @RequestMapping("toPermissionRight")
    public String toPermissionRight() {
        return "permission/permissionRight";
    }


    /**
     * 跳转到用户管理
     */
    @RequestMapping("toUserManager")
    public String toUserManager() {
        return "user/userManager";
    }

    /**
     * 跳转到文章管理
     */
    @RequestMapping("toArticleManager")
    public String toArticleManager() {
        return "article/articleManager";
    }

    /**
     * 跳转到问答管理
     */
    @RequestMapping("toQuestionManager")
    public String toQuestionManager() {
        return "article/questionManager";
    }

    /**
     * 跳转到文章分类管理
     */
    @RequestMapping("toCategoryManager")
    public String toCategoryManager() {
        return "article/categoryManager";
    }

    /**
     * 跳转到评论管理
     */
    @RequestMapping("toCommentManager")
    public String toCommentManager() {
        return "article/commentManager";
    }

    /**
     * 跳转到商品管理
     */
    @RequestMapping("toGoodsManager")
    public String toGoodsManager() {
        return "mall/goodsManager";
    }

    /**
     * 跳转到订单管理
     */
    @RequestMapping("toOrderManager")
    public String toOrderManager() {
        return "mall/orderManager";
    }

}
