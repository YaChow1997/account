package com.account.mapper;

import com.account.entity.Role;
import com.account.entity.User;

import java.util.List;

public interface RoleMapper {
    public List<Role> queryAll();
}
