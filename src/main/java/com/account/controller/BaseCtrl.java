package com.account.controller;

import com.account.common.Result;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class BaseCtrl {

    private final Logger exLogger = LoggerFactory.getLogger("exLogger");
    /**
     * 处理成功时的返回
     * @param o 返回的结果集
     * @return Result
     */
    protected Result send(Object o) {
        Result ret = new Result();
        ret.setResult(o);
        return ret;
    }

    /**
     * 非正常情况的返回
     * @param code 错误码
     * @param message 错误信息
     * @return Result
     */
    protected Result send(int code, String message) {
        Result ret = new Result();
        ret.setStatus(code, message);
        return ret;
    }

    /**
     * 特殊情况的反馈
     * @param o 结果集
     * @param code 状态码
     * @param message 状态信息
     * @return Result
     */
    protected Result send(Object o, int code, String message) {
        Result ret = new Result();
        ret.setStatus(code, message);
        ret.setResult(o);
        return ret;
    }
}

