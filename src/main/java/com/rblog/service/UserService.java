package com.rblog.service;

import com.rblog.bean.User;
import com.rblog.bean.UserExample;
import org.springframework.stereotype.Service;

import java.util.List;

//@Service
public interface UserService {

    List<User> selectOneByExample(String username);

    User selectByPrimaryKey(Integer userId);

}
