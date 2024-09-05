package com.krms4u.api.domain.product.exception;

public class InvalidRentalFeeException extends RuntimeException {

    public InvalidRentalFeeException(String message) {
        super(message);
    }

    public InvalidRentalFeeException() {
        this("월 렌탈 금액은 0 이하일 수 없습니다.");
    }

}
