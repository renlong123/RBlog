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
    public List<User> selectByExample(UserExample example) {
        return userMapper.selectByExample(example);
    }
}
