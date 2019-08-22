package com.account.mapper;
import com.account.entity.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

public interface NewsMapper {

    ArrayList<News> getAllNews(@Param(value = "user_id") Integer user_id);   //获取所有新闻

    News getContent(int id);

    public int addNews(News news);

    public int updateNews(News news);
    /*删除景点*/
    public int deleteNews(@Param(value = "id") Integer id);
}
