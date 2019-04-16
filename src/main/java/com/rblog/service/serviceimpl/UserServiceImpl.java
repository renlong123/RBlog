package com.rblog.service.serviceimpl;

import com.rblog.bean.User;
import com.rblog.bean.UserExample;
import com.rblog.dao.UserMapper;
import com.rblog.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> selectOneByExample(String username) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserNikenameEqualTo(username);
        return userMapper.selectByExample(example);
    }

    @Override
    public User selectByPrimaryKey(Integer userId) {

        return userMapper.selectByPrimaryKey(userId);
    }

    @Override
    public long countByExample(String username) {
        UserExample example = new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserNikenameEqualTo(username);
        return userMapper.countByExample(example);
    }
}
