package com.jin.poetry.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Comment;
import com.jin.poetry.vo.CommentVo;

public interface CommentService extends IService<Comment> {

    public DataGridView loadAllComment(CommentVo commentVo);

    public ResultObj addComment(CommentVo commentVo);

    public ResultObj updateComment(CommentVo commentVo);

    public ResultObj deleteComment(Integer id);

    public ResultObj batchDeleteComment(CommentVo commentVo);

    public Integer getCommentNumberById(Integer id);
}
