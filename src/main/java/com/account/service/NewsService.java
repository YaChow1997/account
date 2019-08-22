package com.account.service;
import com.account.entity.News;
import com.account.mapper.NewsMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class NewsService {
    @Autowired
    private NewsMapper newsMapper;

    private SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");

    public Map<String,Object> getAllNews(Integer pageNumber,Integer pageSize,Integer user_id) {
        PageHelper.startPage(pageNumber,pageSize);
        List<News> news = newsMapper.getAllNews(user_id);
        PageInfo pageInfo = new PageInfo(news);
        Map<String,Object> result=new HashMap<>();
        result.put("data",news);
        result.put("total",pageInfo.getTotal());
        result.put("size",pageInfo.getSize());
        return result;
    }

    public News getContent(int id) {

        return newsMapper.getContent(id);
    }

    public int addNews(News news){
            Date d=new Date();
            news.setCreate_time(simpleDateFormat.format(d));
            news.setUpdate_time(simpleDateFormat.format(d));
            news.setIs_delete("0");
            return newsMapper.addNews(news);
    }

    @Transactional
    public int updateNews(News news){
        Date d=new Date();
        news.setUpdate_time(simpleDateFormat.format(d));
        return newsMapper.updateNews(news);
    }

    @Transactional
    public int deleteNews(Integer id){
        return newsMapper.deleteNews(id);
    }
}
