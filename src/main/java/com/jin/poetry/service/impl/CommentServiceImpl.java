package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.BaseUser;
import com.jin.poetry.domain.Comment;
import com.jin.poetry.mapper.CommentMapper;
import com.jin.poetry.service.ArticleService;
import com.jin.poetry.service.BaseUserService;
import com.jin.poetry.service.CommentService;
import com.jin.poetry.vo.CommentVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Service
public class CommentServiceImpl extends ServiceImpl<CommentMapper, Comment> implements CommentService {

    @Autowired
    private BaseUserService baseUserService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private CommentMapper commentMapper;
    /**
     * 查询
     */
    @Override
    public DataGridView loadAllComment(CommentVo commentVo) {
        IPage<Comment> commentIPage = new Page<>(commentVo.getPage(), commentVo.getLimit());
        QueryWrapper<Comment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(StringUtils.isNotBlank(commentVo.getTitle()), "aid", commentMapper.getArticleId(commentVo.getTitle()));
        queryWrapper.eq(StringUtils.isNotBlank(commentVo.getReviewer()), "uid", commentMapper.getReviewerId(commentVo.getReviewer()));
        queryWrapper.like(StringUtils.isNotBlank(commentVo.getContent()), "content", commentVo.getContent());
        this.page(commentIPage, queryWrapper);
        List<Comment> records = commentIPage.getRecords();
        for (Comment comment : records) {
            BaseUser baseUser = this.baseUserService.getById(comment.getUid());
            Article article = this.articleService.getById(comment.getAid());
            if (null != baseUser&& null!=article) {
                comment.setReviewer(baseUser.getUsername());
                comment.setTitle(article.getTitle());
            }
        }
        return new DataGridView(commentIPage.getTotal(), records);
    }

    /**
     * 添加
     */
    @Override
    public ResultObj addComment(CommentVo commentVo) {
        try {
            commentVo.setCreatetime(new Date());
            this.save(commentVo);
            Article article = this.articleService.getById(commentVo.getAid());
            article.setCommentnumber(commentMapper.getCommentNumberById(commentVo.getAid()));
            this.articleService.updateById(article);
            return ResultObj.ADD_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_ERROR;
        }
    }

    /**
     * 修改
     */
    @Override
    public ResultObj updateComment(CommentVo commentVo) {
        try {
            this.updateById(commentVo);
            return ResultObj.UPDATE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.UPDATE_ERROR;
        }
    }

    /**
     * 删除
     */
    @Override
    public ResultObj deleteComment(Integer id) {
        try {
            this.removeById(id);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 批量删除
     */
    @Override
    public ResultObj batchDeleteComment(CommentVo commentVo) {
        try {
            Collection<Serializable> idList = new ArrayList<Serializable>();
            for (Integer id : commentVo.getIds()) {
                idList.add(id);
            }
            this.removeByIds(idList);
            return ResultObj.DELETE_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.DELETE_ERROR;
        }
    }

    /**
     * 根据文章ID查询评论数
     */
    @Override
    public Integer getCommentNumberById(Integer id) {
        return commentMapper.getCommentNumberById(id);
    }


}
