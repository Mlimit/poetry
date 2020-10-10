package com.jin.poetry.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jin.poetry.common.DataGridView;
import com.jin.poetry.common.ResultObj;
import com.jin.poetry.domain.Article;
import com.jin.poetry.domain.Favor;
import com.jin.poetry.domain.User;
import com.jin.poetry.mapper.FavorMapper;
import com.jin.poetry.service.ArticleService;
import com.jin.poetry.service.FavorService;
import com.jin.poetry.service.UserService;
import com.jin.poetry.vo.FavorVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class FavorServiceImpl extends ServiceImpl<FavorMapper, Favor> implements FavorService {

    @Autowired
    private UserService userService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private FavorMapper favorMapper;

    /**
     * 查询
     */
    @Override
    public DataGridView loadAllFavor(FavorVo favorVo) {
        IPage<Favor> favorIPage = new Page<>(favorVo.getPage(), favorVo.getLimit());
        QueryWrapper<Favor> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq(favorVo.getAid() != null && favorVo.getAid() != 0, "aid", favorVo.getAid());
        queryWrapper.eq(favorVo.getUid() != null && favorVo.getUid() != 0, "uid", favorVo.getUid());
        this.page(favorIPage, queryWrapper);
        List<Favor> records = favorIPage.getRecords();
        for (Favor favor : records) {
            User user = this.userService.getById(favor.getUid());
            Article article = this.articleService.getById(favor.getAid());
            if (null != user && null != article) {
                favor.setFavorer(user.getUsername());
                favor.setTitle(article.getTitle());
            }
        }
        return new DataGridView(favorIPage.getTotal(), records);
    }

    /**
     * 点赞与取消点赞
     */
    @Override
    public ResultObj addOrCencelFavor(FavorVo favorVo) {
        try {
            Favor favor = favorMapper.getFavorStatus(favorVo.getAid(), favorVo.getUid());
            if (favor == null) {
                favorVo.setCreatetime(new Date());
                favorVo.setStatus(1);
                this.save(favorVo);
                Article article = this.articleService.getById(favorVo.getAid());
                article.setFavornumber(favorMapper.getFavorNumberById(favorVo.getAid()));
                this.articleService.updateById(article);
                return ResultObj.ADD_FAVOR_SUCCESS;
            } else {
                favorVo.setId(favor.getId());
                Integer status = favor.getStatus();
                if (status == 0) {
                    favorVo.setStatus(1);
                    favorVo.setCreatetime(new Date());
                    this.updateById(favorVo);
                    Article article = this.articleService.getById(favorVo.getAid());
                    article.setFavornumber(favorMapper.getFavorNumberById(favorVo.getAid()));
                    this.articleService.updateById(article);
                    return ResultObj.ADD_FAVOR_SUCCESS;
                } else if (status == 1) {
                    //取消点赞
                    try {
                        favorVo.setStatus(0);
                        favorVo.setCreatetime(new Date());
                        this.updateById(favorVo);
                        Article article = this.articleService.getById(favorVo.getAid());
                        article.setFavornumber(favorMapper.getFavorNumberById(favorVo.getAid()));
                        this.articleService.updateById(article);
                        return ResultObj.CANCEL_FAVOR_SUCCESS;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return ResultObj.CANCEL_FAVOR_ERROR;
                    }
                }
            }
            return ResultObj.ADD_FAVOR_SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            return ResultObj.ADD_FAVOR_ERROR;
        }
    }


    /**
     * 根据文章ID查询点赞数
     */
    @Override
    public Integer getFavorNumberById(Integer id) {
        return favorMapper.getFavorNumberById(id);
    }

    /**
     * 判断某篇文章某个用户是否点赞
     *
     * @param aid
     * @param uid
     * @return
     */
    @Override
    public Integer getFavorStatus(Integer aid, Integer uid) {
        Favor favor = favorMapper.getFavorStatus(aid, uid);
        Integer status = favor.getStatus();
        if (status != null && status != 0) {
            return 1;
        }
        return 0;
    }


}
