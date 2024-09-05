package com.krms4u.api.domain.product.exception;

public class InsertProductOrderFailedException extends RuntimeException {

    public InsertProductOrderFailedException(String message) {
        super(message);
    }

    public InsertProductOrderFailedException() {
        this("주문상품 데이터 삽입을 실패하였습니다.");
    }

}