package com.account.mapper;

import com.account.dto.MenuDto;
import com.account.entity.Menu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MenuMapper {
    public List<Menu> queryMenuByMenu1Id(List<Integer> menuIdList);
}
