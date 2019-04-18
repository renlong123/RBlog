package com.rblog.service;

import com.rblog.bean.User;
import com.rblog.bean.UserExample;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

//@Service
public interface UserService {

    List<User> selectOneByExample(String username);

    User selectByPrimaryKey(Integer userId);

    long countByExample(String username);

    int save(User user);

    int updateByExampleSelective(@Param("record") User record);
}
