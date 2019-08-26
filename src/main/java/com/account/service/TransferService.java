package com.account.service;
import com.account.dto.TransferDto;
import com.account.entity.Transfer;
import com.account.entity.User;
import com.account.mapper.TransferMapper;
import com.account.mapper.UserMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TransferService {
    @Autowired
    private TransferMapper transferMapper;

    private UserMapper userMapper;

    public void setTransferMapper(TransferMapper transferMapper) {
        this.transferMapper = transferMapper;
    }

    public Map<String,Object> queryAllTransfer(Integer pageNumber,Integer pageSize,Integer sponsor_id) {
        PageHelper.startPage(pageNumber,pageSize);
        List<TransferDto> transfers=transferMapper.queryAllTransfer(sponsor_id);
        PageInfo pageInfo=new PageInfo(transfers);
        Map<String,Object> result=new HashMap<>();
        result.put("data",transfers);
        result.put("total",pageInfo.getTotal());
        result.put("size",pageInfo.getSize());
        return result;
    }
    public Map<String,Object> getTransferBysponsorId(Integer pageNumber,Integer pageSize,Integer sponsor_id) {
        PageHelper.startPage(pageNumber,pageSize);
        List<TransferDto> transfers1=transferMapper.queryAllTransfer(sponsor_id);
        PageInfo pageInfo=new PageInfo(transfers1);
        Map<String,Object> result=new HashMap<>();
        result.put("data",transfers1);
        result.put("total",pageInfo.getTotal());
        result.put("size",pageInfo.getSize());
        return result;
    }


    @Transactional
    public int deleteTransfer(Integer id){return transferMapper.deleteTransfer(id);}
    @Transactional
    public Transfer updateTransfer(TransferDto transferDto){
        return updateTransfer(transferMapper.updateTransfer(transferDto));
    }


    public TransferDto getTransferById(Integer id) {
        return getTransferById(transferMapper.getTransferById(id));
    }
}
