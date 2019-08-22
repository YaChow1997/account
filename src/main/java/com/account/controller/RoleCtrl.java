package com.account.controller;

import com.account.common.Result;
import com.account.entity.Role;
import com.account.entity.User;
import com.account.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/role")
public class RoleCtrl extends BaseCtrl{
    @Autowired
    private RoleService roleService;
    @GetMapping("/queryAll")
    public Result queryAll(){
        List<Role> roleList=roleService.queryAll();
        return this.send(roleList);
    }
}
