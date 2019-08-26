package com.account.mapper;

import com.account.dto.TransferDto;
import com.account.entity.Transfer;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;

public interface TransferMapper {
    ArrayList<TransferDto> queryAllTransfer(@Param("sponsor_id")Integer sponsor_id);

    public Integer getTransferById(@Param("id") Integer id);

    public int deleteTransfer(@Param(value = "id") Integer id);

    public TransferDto updateTransfer(TransferDto transferDto);

    public int addTransfer(Transfer transfer);
}