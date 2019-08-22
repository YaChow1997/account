package com.account.service;

import com.account.common.MyException;
import com.account.dto.AccountDto;
import com.account.dto.TransferDto;
import com.account.entity.Account;
import com.account.entity.Transfer;
import com.account.mapper.AccountMapper;
import com.account.mapper.TransferMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class AccountService {
    @Autowired
    private AccountMapper accountMapper;
    @Autowired
    private TransferMapper transferMapper;

    private SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");

    public Map<String,Object> getAllAccount(Integer pageNumber,Integer pageSize,Integer user_id){
        PageHelper.startPage(pageNumber,pageSize);
        List<AccountDto> accountDtos=accountMapper.getAllAccount(user_id);
        PageInfo pageInfo=new PageInfo(accountDtos);
        Map<String,Object> result=new HashMap<>();
        result.put("data",accountDtos);
        result.put("total",pageInfo.getTotal());
        result.put("size",pageInfo.getSize());
        return result;
    }

    @Transactional
    public Account addAccount(Account account){
        UUID uuid=UUID.randomUUID();
        account.setAccount_num(uuid.toString().replace("-",""));
        accountMapper.addAccount(account);
        return account;
    }
    public Account queryByAccountNumber(String account_num){
        return accountMapper.queryByAccountNumber(account_num);
    }

    /**
     * 更新账户信息
     * @param account
     * @return
     */
    @Transactional
    public int updateAccount(Account account){
        return accountMapper.updateAccount(account);
    }

    public Account queryByUserId(Integer user_id){
        return accountMapper.queryByUserId(user_id);
    }

    @Transactional
    public int transfer(Transfer transfer,Integer password) throws MyException {
        /*该用户扣钱*/
        Account fromAccount=accountMapper.queryAccountById(transfer.getSponsor_id());
        if(!fromAccount.getPassword().equals(password)){
            throw new MyException("支付密码错误");
        }
        if(fromAccount.getBalance()<transfer.getTransfer_amount()){
            throw new MyException("余额不足");
        }

        /*转账对象*/
        Account account=new Account();
        account.setId(fromAccount.getId());
        account.setBalance(fromAccount.getBalance()-transfer.getTransfer_amount());
        accountMapper.updateAccount(account);

        /*收款人加钱*/
        Account toAccount=accountMapper.queryAccountById(transfer.getReciever_id());
        Account account1=new Account();
        account1.setId(toAccount.getId());
        account1.setBalance(toAccount.getBalance()+transfer.getTransfer_amount());
        accountMapper.updateAccount(account1);

        /*添加转账记录*/
        transfer.setTransfer_type("2");
        transfer.setTransfer_status("1");
        transfer.setTransfer_time(simpleDateFormat.format(new Date()));
        UUID uuid=UUID.randomUUID();
        transfer.setTransfer_num(uuid.toString().replace("-",""));
        transferMapper.addTransfer(transfer);
        return 1;
    }

    /**
     * 存款
     * @param transfer
     * @param password
     * @return
     */
    @Transactional
    public int deposit(Transfer transfer,Integer password) throws MyException {
        /*该用户加钱*/
        Account fromAccount=accountMapper.queryAccountById(transfer.getSponsor_id());
        if(!fromAccount.getPassword().equals(password)){
            throw new MyException("支付密码错误");
        }
        /*转账对象*/
        Account account=new Account();
        account.setId(fromAccount.getId());
        account.setBalance(fromAccount.getBalance()+transfer.getTransfer_amount());
        accountMapper.updateAccount(account);
        /*添加存款记录*/
        transfer.setTransfer_type("0");
        transfer.setTransfer_status("1");
        transfer.setTransfer_time(simpleDateFormat.format(new Date()));
        UUID uuid=UUID.randomUUID();
        transfer.setTransfer_num(uuid.toString().replace("-",""));
        transferMapper.addTransfer(transfer);
        return 1;
    }

    /**
     * 取款
     * @param transfer
     * @param password
     * @return
     * @throws MyException
     */
    @Transactional
    public int withdraw(Transfer transfer, Integer password) throws MyException {
        /*该用户加钱*/
        Account fromAccount=accountMapper.queryAccountById(transfer.getSponsor_id());
        if(!fromAccount.getPassword().equals(password)){
            throw new MyException("支付密码错误");
        }
        if(fromAccount.getBalance()<transfer.getTransfer_amount()){
            throw new MyException("余额不足");
        }
        /*取款对象*/
        Account account=new Account();
        account.setId(fromAccount.getId());
        account.setBalance(fromAccount.getBalance()-transfer.getTransfer_amount());
        accountMapper.updateAccount(account);
        /*添加存款记录*/
        transfer.setTransfer_type("1");
        transfer.setTransfer_status("1");
        transfer.setTransfer_time(simpleDateFormat.format(new Date()));
        UUID uuid=UUID.randomUUID();
        transfer.setTransfer_num(uuid.toString().replace("-",""));
        transferMapper.addTransfer(transfer);
        return 1;
    }

    @Transactional
    public int changePassword (Account account){
        return accountMapper.changePassword(account);
    }

}
