package com.account.controller;

import com.account.common.MyException;
import com.account.common.Result;
import com.account.dto.OpenAccountDto;
import com.account.dto.TransferDto;
import com.account.dto.UserDto;
import com.account.entity.Account;
import com.account.entity.Transfer;
import com.account.entity.User;
import com.account.service.AccountService;
import com.account.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/accounts")
public class AccountCtrl extends BaseCtrl{
    @Autowired
    private AccountService accountService;

    @Autowired
    private UserService userService;

    private SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");


    @RequestMapping("/getAllAccount")
    @ResponseBody
    public Map<String,Object> queryAllAccount(
            @RequestParam("pageNumber")Integer pageNumber,
            @RequestParam("pageSize")Integer pageSize,
            @RequestParam(value = "sponsor_id",required = false)Integer user_id) {
        return accountService.getAllAccount(pageNumber,pageSize,user_id);
    }

    @PostMapping("/addAccount")
    @ResponseBody
    public Result addAccount(OpenAccountDto openAccountDto, HttpServletRequest request){
        if(accountService.queryByUserId(openAccountDto.getUser_id())!=null){
            return this.send(-1,"该用户已存在账号");
        }
        Account account=new Account();
        account.setBalance(openAccountDto.getMoney());
        account.setOpen_money(openAccountDto.getMoney());
        account.setIs_lock("1");
        account.setUser_id(openAccountDto.getUser_id());
        Date now=new Date();
        account.setOpen_time(simpleDateFormat.format(now));
        System.out.println(simpleDateFormat.format(now));
        String card_num=openAccountDto.getCardNumber();
        try {
            account.setPassword(Integer.valueOf(card_num.substring(card_num.length() - 6,card_num.length())));
        }catch (Exception e){
            return this.send(-1,"支付密码设置失败");
        }
        accountService.addAccount(account);

        User user=new User();
        user.setId(openAccountDto.getUser_id());
        user.setTelecode(openAccountDto.getTelecode());
        user.setEmail(openAccountDto.getEmail());
        user.setAddress(openAccountDto.getAddress());
        user.setBirthday(openAccountDto.getBirthday());
        user.setCard_num(openAccountDto.getCardNumber());
        userService.updateUser(user);
        return this.send(null);
    }

    @RequestMapping("/updateAccountStatus")
    public Result updateAccountStatus(Account account){
        return this.send(accountService.updateAccount(account));
    }

    @GetMapping("/toTransfer")
    public ModelAndView toTransfer(HttpSession session){
        User user=(User)session.getAttribute("user");
        ModelAndView modelAndView1=new ModelAndView();
        modelAndView1.setViewName("client/transfer");
        User user1=new User();
        user1.setRole_id(1);
        /*查询所有客户*/
        modelAndView1.addObject("users",userService.queryAllUsers(user1));
        Account account=accountService.queryByUserId(user.getId());
        modelAndView1.addObject("account",account);
        return modelAndView1;
    }

    @RequestMapping("/transfer")
    @ResponseBody
    public Result transfer(TransferDto transferDto, HttpSession session){
        User user= (User) session.getAttribute("user");
        Account account=accountService.queryByUserId(user.getId());
        if(account==null){
            return this.send(-1,"该账号未开户");
        }
        Account account1=accountService.queryByUserId(transferDto.getToUserId());
        if(account1==null){
            return this.send(-2,"收款人未开户");
        }
        if(account.getId().equals(account1.getId())){
            return this.send(-3,"同一用户无法转账");
        }
        if(account.getIs_lock().equals("1")){
            return this.send(-6,"账户已冻结！");
        }
        Transfer transfer=new Transfer();
        transfer.setSponsor_id(account.getId());
        transfer.setReciever_id(transferDto.getToUserId());
        transfer.setRemark(transferDto.getRemark());
        transfer.setTransfer_amount(transferDto.getTransfer_amount());
        try {
            accountService.transfer(transfer,transferDto.getPassword());
        }catch (MyException e){
            return this.send(-4,e.getMessage());
        }catch (Exception e1){
            return this.send(-5,"转账失败");
        }
        return this.send(null);
    }
    @RequestMapping("/deposit")
    @ResponseBody
    public Result deposit(TransferDto transferDto, HttpSession session){
        User user= (User) session.getAttribute("user");
        Account account=accountService.queryByUserId(user.getId());
        if(account==null){
            return this.send(-1,"该账号未开户");
        }
        if(account.getIs_lock().equals("1")){
            return this.send(-2,"账户已冻结！");
        }
        Transfer transfer=new Transfer();
        transfer.setSponsor_id(account.getId());
        transfer.setTransfer_amount(transferDto.getTransfer_amount());
        try {
            accountService.deposit(transfer,transferDto.getPassword());
        }catch (MyException e){
            return this.send(-4,e.getMessage());
        }catch (Exception e1){
            return this.send(-5,"存款失败");
        }
        return this.send(null);
    }
    @RequestMapping("/withdraw")
    @ResponseBody
    public Result withdraw(TransferDto transferDto, HttpSession session){
        User user= (User) session.getAttribute("user");
        Account account=accountService.queryByUserId(user.getId());
        if(account==null){
            return this.send(-1,"该账号未开户");
        }
        if(account.getIs_lock().equals("1")){
            return this.send(-2,"账户已冻结！");
        }
        Transfer transfer=new Transfer();
        transfer.setSponsor_id(account.getId());
        transfer.setTransfer_amount(transferDto.getTransfer_amount());
        try {
            accountService.withdraw(transfer,transferDto.getPassword());
        }catch (MyException e){
            return this.send(-4,e.getMessage());
        }catch (Exception e1){
            return this.send(-5,"取款失败");
        }
        return this.send(null);
    }

    @RequestMapping("/changePassword")
    @ResponseBody
    public Result changePassword (@RequestParam(value = "password")Integer password,HttpSession session) {
        User user=(User)session.getAttribute("user");
        Account account=new Account();
        account.setUser_id(user.getId());
        account.setPassword(password);
        return this.send(accountService.changePassword(account));
    }
    /**
     * 跳转到开户界面
     * @param
     * @return
     */
    @GetMapping("/toOpenAccount")
    public ModelAndView toOpenAccount(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("admin/openaccount");
        User user=new User();
        user.setRole_id(1);
        /*查询所有客户*/
        modelAndView.addObject("users",userService.queryAllUsers(user));
        return modelAndView;
    }

    @GetMapping("/toUpdateInfo")
    public ModelAndView toUpdateInfo(HttpSession session){
        User user = (User) session.getAttribute("user");
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("client/updateInfo");
        Account account=accountService.queryByUserId(user.getId());
        modelAndView.addObject("account",account);
        return modelAndView;
    }


}
