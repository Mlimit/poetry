package com.jin.poetry.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResultObj {

    public static final ResultObj LOGIN_SUCCESS = new ResultObj(Constast.OK, "登录成功");
    public static final ResultObj LOGIN_ERROR_PASS = new ResultObj(Constast.ERROR, "登录失败,用户名或密码不正确");
    public static final ResultObj LOGIN_ERROR_CODE = new ResultObj(Constast.ERROR, "登录失败,验证码不正确");

    public static final ResultObj UPDATE_SUCCESS = new ResultObj(Constast.OK, "更新成功");
    public static final ResultObj UPDATE_ERROR = new ResultObj(Constast.ERROR, "更新失败");
    public static final ResultObj UPDATE_EXIST_ERROR = new ResultObj(Constast.ERROR, "该分类下具有子记录，无法修改");


    public static final ResultObj ADD_SUCCESS = new ResultObj(Constast.OK, "添加成功");
    public static final ResultObj ADD_ERROR = new ResultObj(Constast.ERROR, "添加失败");

    public static final ResultObj DELETE_SUCCESS = new ResultObj(Constast.OK, "删除成功");
    public static final ResultObj DELETE_ERROR = new ResultObj(Constast.ERROR, "删除失败");

    public static final ResultObj RESET_SUCCESS = new ResultObj(Constast.OK, "重置成功");
    public static final ResultObj RESET_ERROR = new ResultObj(Constast.ERROR, "重置失败");

	public static final ResultObj CHANGE_SUCCESS = new ResultObj(Constast.OK, "修改成功");
	public static final ResultObj CHANGE_ERROR_DIFFERENT = new ResultObj(Constast.ERROR, "旧密码错误,请重新输入!");
	public static final ResultObj CHANGE_ERROR = new ResultObj(Constast.ERROR, "修改失败");

    public static final ResultObj DISPATCH_SUCCESS = new ResultObj(Constast.OK, "分配成功");
    public static final ResultObj DISPATCH_ERROR = new ResultObj(Constast.ERROR, "分配失败");

    public static final ResultObj OPERATE_SUCCESS = new ResultObj(Constast.OK, "操作成功");
    public static final ResultObj OPERATE_ERROR = new ResultObj(Constast.ERROR, "操作失败");

    public static final ResultObj ADD_FAVOR_SUCCESS = new ResultObj(Constast.OK, "点赞成功");
    public static final ResultObj ADD_FAVOR_ERROR = new ResultObj(Constast.ERROR, "点赞失败");

    public static final ResultObj CANCEL_FAVOR_SUCCESS = new ResultObj(Constast.OK, "取消成功");
    public static final ResultObj CANCEL_FAVOR_ERROR = new ResultObj(Constast.ERROR, "取消失败");

    private Integer code;
    private String msg;


}
