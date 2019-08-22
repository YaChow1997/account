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

//    @RequestMapping("/changePassword")
//    public Result changePassword  (@RequestParam(value = "oldPassword")String oldPassword,@RequestParam(value = "password")String password,HttpServletRequest request,HttpServletResponse response)  throws IOException {
//        HttpSession session = request.getSession();
//        UserDto user = (UserDto) session.getAttribute("user");
//        if(!oldPassword.getBytes().equals(user.getPassword())) {
//            return this.send(-1, "原密码输入错误");
//        }
//        UserDto user_new = new UserDto();
//        user_new.setPassword();
//        user_new.setId(user.getId());
//        userService.changePassword(user_new);
//        session.removeAttribute("user");
//        return this.send(null);
//    }
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
    public Result updateInfo(User user,HttpServletRequest request,HttpServletResponse response)  throws IOException {
        HttpSession session = request.getSession();
        UserDto userdto = (UserDto) session.getAttribute("user");
        int id=userdto.getId();
        user.setId(id);
        userService.updateUser(user);
        userdto.setCard_num(user.getCard_num());
        userdto.setEmail(user.getEmail());
        userdto.setTelecode(user.getTelecode());
        userdto.setAddress(user.getAddress());
        userdto.setBirthday(user.getBirthday());
        session.setAttribute("user", userdto);
        return this.send(userService.updateUser(user));
    }
}
