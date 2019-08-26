package com.account.service;
import com.account.dto.UserDto;
import com.account.entity.Transfer;
import com.account.entity.User;
import com.account.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;
    /* 登陆验证 */
    public User checkLogin(String name, String password) {
        //根据用户名实例化用户对象
        User user = userMapper.getUserByName(name);
        if (user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    @Transactional
    public int changePassword (User user){
        return userMapper.changePassword(user);
    }

    @Transactional
    public int updateUser(User user){
        return userMapper.updateUser(user);
    }

    public List<User> queryAllUsers(User user){
        return userMapper.queryAllUsers(user);
    }

    public User queryByUserId(Integer id){
        return userMapper.queryByUserId(id);
    }
}
