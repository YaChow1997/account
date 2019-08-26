package com.account.mapper;

import com.account.dto.UserDto;
import com.account.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;

public interface UserMapper {
     /*登录比对账号密码*/
     public User getUserByName(@Param("name") String name);

     public int updateUser(User user);

     public int changePassword(@Param("user_new")User user);

     public List<User> queryAllUsers(User user);

     public User queryByUserId(Integer id);

     public int deleteUser(String email);
}
