package com.account.mapper;

import com.account.dto.AccountDto;
import com.account.entity.Account;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface AccountMapper {
    public ArrayList<AccountDto> getAllAccount(@Param(value = "user_id") Integer user_id);
    public int addAccount(Account account);
    public Account queryByAccountNumber(String account_num);
    public int updateAccount(Account account);
    public Account queryByUserId(Integer user_id);
    public List<AccountDto> queryAccounts(Map<String,Object> params);
    public Account queryAccountById(Integer id);
    public int changePassword(@Param("account")Account account);
}
