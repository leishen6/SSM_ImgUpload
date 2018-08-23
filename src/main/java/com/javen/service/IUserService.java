package com.javen.service;

import com.javen.model.User;

/**
 * Created by ASUS on 2018-08-06.
 */
public interface IUserService {

    int deleteByPrimaryKey(Integer id);
    int insert(User record);
    int insertSelective(User record);
    User selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(User record);
    int updateByPrimaryKey(User record);

}
