package com.account.controller;

import com.account.dto.TransferDto;
import com.account.entity.Transfer;
import com.account.entity.User;
import com.account.service.AccountService;
import com.account.service.TransferService;
import com.account.service.UserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/records")
public class TransferCtrl {
    @Autowired
    private TransferService transferService;
    @Autowired
    private UserService userService;
    @Autowired
    private AccountService accountService;

    @RequestMapping("/queryAllTransfer")
    @ResponseBody
    public Map<String,Object> queryAllTransfer(
            @RequestParam("pageNumber")Integer pageNumber,
            @RequestParam("pageSize")Integer pageSize,
            @RequestParam(value = "sponsor_id",required = false)Integer sponsor_id) {
        return transferService.queryAllTransfer(pageNumber,pageSize,sponsor_id);
    }

    @RequestMapping("/getTransferBysponsorId")
    @ResponseBody
    public  Map<String,Object> getTransferBysponsorId(HttpSession session,
            @RequestParam("pageNumber")Integer pageNumber,
            @RequestParam("pageSize")Integer pageSize){
            User user= (User) session.getAttribute("user");
            Integer sponsor_id=user.getId();
            return transferService.getTransferBysponsorId(pageNumber,pageSize,sponsor_id);
    }

    @RequestMapping("/updateTransferById/{id}")
        public ModelAndView updateTransferById(@PathVariable(value = "id",required = true)Integer id,User user){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("transfer",transferService.getTransferById(id));
        modelAndView.addObject("users",userService.queryAllUsers(user));
        modelAndView.addObject("account",accountService.queryByUserId(id));
        modelAndView.setViewName("/client/transfer.jsp");
        return modelAndView;
    }


    @RequestMapping("/deleteTransfer")
    @ResponseBody
        public int deleteTransfer(@RequestParam(value = "id", required=true)Integer id){
            return transferService.deleteTransfer(id);
        }


}