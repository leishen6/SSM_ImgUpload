package com.javen.service.impl;

import com.javen.mapping.UserMapper;
import com.javen.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by ASUS on 2018-08-06.
 */
@Service
@Transactional
public class IUserServiceimpl implements com.javen.service.IUserService{
    @Autowired
    public UserMapper um;
    @Override
    public int deleteByPrimaryKey(Integer id) {
        return um.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(User record) {
        return um.insert(record);
    }

    @Override
    public int insertSelective(User record) {
        return um.insertSelective(record);
    }

    @Override
    public User selectByPrimaryKey(Integer id) {
        return um.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        return um.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        return um.updateByPrimaryKey(record);
    }
}
