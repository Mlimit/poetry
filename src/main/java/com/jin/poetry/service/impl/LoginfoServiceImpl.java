package com.jin.poetry.service.impl;

import com.jin.poetry.domain.Loginfo;
import com.jin.poetry.mapper.LoginfoMapper;
import com.jin.poetry.service.LoginfoService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *  服务实现类
 */
@Service
@Transactional
public class LoginfoServiceImpl extends ServiceImpl<LoginfoMapper, Loginfo> implements LoginfoService {

}
