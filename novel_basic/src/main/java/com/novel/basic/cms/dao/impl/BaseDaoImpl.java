package com.novel.basic.cms.dao.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by dennis.sun
 * @date 2018/4/30 19:36:03.
 */
public class BaseDaoImpl {

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;
}
