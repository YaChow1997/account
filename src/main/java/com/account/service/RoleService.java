package com.account.service;

import com.account.entity.Role;
import com.account.entity.User;
import com.account.mapper.RoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {
    @Autowired
    private RoleMapper roleMapper;
    public List<Role> queryAll(){
        return roleMapper.queryAll();
    }
}