package com.account.dto;

public class TransferDto {
    private int id;
    private String transfer_num;
    private int sponsor_id;
    private int reciever_id;
    private float transfer_amount;
    private String transfer_status;
    private String remark;
    private String transfer_type;
    private String transfer_time;
    private Integer toUserId;
    private String toUserName;
    private Integer password;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTransfer_num() {
        return transfer_num;
    }

    public void setTransfer_num(String transfer_num) {
        this.transfer_num = transfer_num;
    }

    public int getSponsor_id() {
        return sponsor_id;
    }

    public void setSponsor_id(int sponsor_id) {
        this.sponsor_id = sponsor_id;
    }

    public int getReciever_id() {
        return reciever_id;
    }

    public void setReciever_id(int reciever_id) {
        this.reciever_id = reciever_id;
    }

    public float getTransfer_amount() {
        return transfer_amount;
    }

    public void setTransfer_amount(float transfer_amount) {
        this.transfer_amount = transfer_amount;
    }

    public String getTransfer_status() {
        return transfer_status;
    }

    public void setTransfer_status(String transfer_status) {
        this.transfer_status = transfer_status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getTransfer_type() {
        return transfer_type;
    }

    public void setTransfer_type(String transfer_type) {
        this.transfer_type = transfer_type;
    }

    public String getTransfer_time() {
        return transfer_time;
    }

    public void setTransfer_time(String transfer_time) {
        this.transfer_time = transfer_time;
    }

    public Integer getToUserId() {
        return toUserId;
    }

    public void setToUserId(Integer toUserId) {
        this.toUserId = toUserId;
    }

    public Integer getPassword() {
        return password;
    }

    public void setPassword(Integer password) {
        this.password = password;
    }

    public String getToUserName() {
        return toUserName;
    }

    public void setToUserName(String toUserName) {
        this.toUserName = toUserName;
    }
}
