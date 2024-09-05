package com.krms4u.api.domain.product.exception;

public class InsertOrderFailedException extends RuntimeException {

    public InsertOrderFailedException(String message) {
        super(message);
    }

    public InsertOrderFailedException() {
        this("주문 데이터 삽입을 실패하였습니다.");
    }

}

