package com.account.controller;
import com.account.dto.UserDto;
import com.account.entity.User;
import com.account.service.UserService;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.account.common.Result;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@Scope(value="prototype")//保证 当有请求的时候 都创建一个Action对象
@RequestMapping("/user")
@SessionAttributes("currentUser")
public class UserCtrl extends BaseCtrl{
    @Resource
    private UserService userService;
    //登录和注销
    @RequestMapping(value="/login",method= RequestMethod.POST)
    public ModelAndView login(@RequestParam(value = "name")String name, @RequestParam(value = "password",required = false)String password, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user=userService.checkLogin(name,password);
        ModelAndView modelAndView=new ModelAndView();
        if(user!=null) {
            HttpSession session=request.getSession();
            session.setAttribute("user", user);
            if(user.getRole_id()==1){
                modelAndView.setViewName("client/index");
            }else{
                modelAndView.setViewName("admin/index1");
            }
        }else{
            modelAndView.addObject("message","用户名或密码错误");
            modelAndView.setViewName("login");
        }
        return modelAndView;
    }

    @RequestMapping("/changePassword")
    @ResponseBody
    public Result changePassword(@RequestParam(value = "oldPassword")String oldPassword,@RequestParam(value = "password")String password,HttpServletRequest request,HttpServletResponse response)  throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if(!oldPassword.equals(user.getPassword())) {
            return this.send(-1, "原密码输入错误");
        }
        User user_new = new User();
        user_new.setPassword(password);
        user_new.setId(user.getId());

//        session.removeAttribute("user");
        return this.send(userService.changePassword(user_new));
    }
    @RequestMapping("/queryByUserId")
    @ResponseBody
    public Result queryByUserId(@RequestParam(value = "id")Integer id){
        return this.send(userService.queryByUserId(id));
    }

    @PostMapping("/updateUser")
    @ResponseBody
    public Result updateUser(User user){
        System.out.println(user);
        return this.send(userService.updateUser(user));
    }

    @PostMapping("/updateInfo")
    @ResponseBody
    public Result updateInfo(User user1, HttpServletRequest request,HttpServletResponse response)  throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        int id=user.getId();
        user1.setId(id);
        userService.updateUser(user1);
        user.setCard_num(user1.getCard_num());
        user.setEmail(user1.getEmail());
        user.setTelecode(user1.getTelecode());
        user.setAddress(user1.getAddress());
        user.setBirthday(user1.getBirthday());
        session.setAttribute("user", user);
        return this.send(userService.updateUser(user));
    }

    @PostMapping("/register")
    public Result addUser(User user){
        user.setPassword(user.getPassword());
        user.setRole_id(1);
        int result=0;
        try {
            result = userService.addUser(user);
        }catch (Exception e){
            return this.send(-1,"注册失败");
        }
        if(result==0){
            return this.send(-1,"注册失败");
        }
        return this.send(null);
    }
}
