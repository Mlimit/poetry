package com.jin.poetry.controller;

import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.service.CommentService;
import com.jin.poetry.vo.CommentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CommentController {
    @Autowired
    private CommentService commentService;

    /**
     * 查询
     */
    @RequestMapping("/loadAllComment")
    public DataGridView loadAllComment(CommentVo commentVo) {
        return commentService.loadAllComment(commentVo);
    }

    /**
     * 添加
     */
    @RequestMapping("/addComment")
    public ResultObj addComment(CommentVo commentVo){
        return commentService.addComment(commentVo);
    }

    /**
     * 更新
     */
    @RequestMapping("/updateComment")
    public ResultObj updateComment(CommentVo commentVo) {
        return commentService.updateComment(commentVo);
    }

    /**
     * 删除
     */
    @RequestMapping("/deleteComment")
    public ResultObj deleteComment(Integer id) {
        return commentService.deleteComment(id);
    }

    /**
     * 批量删除
     */
    @RequestMapping("/batchDeleteComment")
    public ResultObj batchDeleteComment(CommentVo commentVo) {
        return commentService.batchDeleteComment(commentVo);
    }

    @RequestMapping("/getCommentNumberById")
    public Integer getCommentNumberById(Integer id) {
        return commentService.getCommentNumberById(id);
    }
}
