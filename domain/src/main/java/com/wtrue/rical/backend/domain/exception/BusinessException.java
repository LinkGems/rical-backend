package com.wtrue.rical.backend.domain.exception;


import com.wtrue.rical.backend.domain.enums.BusinessErrorEnum;
import com.wtrue.rical.common.adam.domain.BaseException;
import com.wtrue.rical.common.adam.enums.ErrorEnum;

/**
 * @description:
 * @author: meidanlong
 * @date: 2023/2/23 10:26
 */
public class BusinessException extends BaseException {

    public BusinessException(String error, String message) {
        super(error, message);
    }

    public BusinessException(String message) {
        super(ErrorEnum.XXX, message);
    }

    public BusinessException(BusinessErrorEnum error) {
        super(error.getCode(), error.getMessage());
    }
}
