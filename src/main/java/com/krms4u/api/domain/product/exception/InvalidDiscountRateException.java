package com.krms4u.api.domain.product.exception;

public class InvalidDiscountRateException extends RuntimeException {

    public InvalidDiscountRateException(String message) {
        super(message);
    }

    public InvalidDiscountRateException(String message, String contractDeadline) {
        this("유효하지 않은 자동이체일 입니다.: " + contractDeadline);
    }

}
