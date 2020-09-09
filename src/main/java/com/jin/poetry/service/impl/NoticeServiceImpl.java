package com.jin.poetry.service.impl;

import com.jin.poetry.domain.Notice;
import com.jin.poetry.mapper.NoticeMapper;
import com.jin.poetry.service.NoticeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *  服务实现类
 */
@Service
@Transactional
public class NoticeServiceImpl extends ServiceImpl<NoticeMapper, Notice> implements NoticeService {

}
