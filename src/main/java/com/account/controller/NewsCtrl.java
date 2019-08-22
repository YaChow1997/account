package com.account.controller;

import com.account.common.Result;
import com.account.dto.UserDto;
import com.account.entity.News;
import com.account.entity.User;
import com.account.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/news")
public class NewsCtrl extends BaseCtrl{
    @Autowired
    private NewsService newsService;

    @RequestMapping("/queryAll")
    @ResponseBody
    public Map<String,Object> queryAll(
            @RequestParam("pageNumber")Integer pageNumber,
            @RequestParam("pageSize")Integer pageSize,
            @RequestParam(value = "user_id",required = false)Integer user_id){
            return newsService.getAllNews(pageNumber,pageSize,user_id);
    }

    @RequestMapping("/read")
    public ModelAndView getContent(@RequestParam(value = "id") Integer id) {
        ModelAndView mv = null;
        try {
            mv = new ModelAndView("content");
            News news = newsService.getContent(id);
            mv.addObject("news",news);
            mv.setViewName("/admin/content");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv;
    }

    @RequestMapping("/read1")
    public ModelAndView getContent1(@RequestParam(value = "id") Integer id) {
        ModelAndView mv1 = null;
        try {
            mv1 = new ModelAndView("content1");
            News news = newsService.getContent(id);
            mv1.addObject("data",news);
            mv1.setViewName("/client/content1");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mv1;
    }

    @RequestMapping("/toUpdateNews")
    public ModelAndView toUpdateNews(@RequestParam(value = "id") Integer id) {

        ModelAndView mv2=new ModelAndView();
        News news = newsService.getContent(id);
        mv2.addObject("news",news);
        mv2.setViewName("/admin/updatenews");
        return mv2;
    }

    @RequestMapping("/addNews")
    public Result addNews(HttpSession session,News news){
        User user= (User) session.getAttribute("user");
        news.setUser_id(user.getId());
        news.setCreator(user.getName());
        return this.send(newsService.addNews(news));
    }

    @RequestMapping("/updateNews")
    @ResponseBody
    public Result updateNews(News news){
        return this.send(newsService.updateNews(news));
    }

    @RequestMapping("/deleteNews")
    @ResponseBody
    public int deleteNews(@RequestParam(value = "id",required = true)Integer id){
        return newsService.deleteNews(id);
    }

}
