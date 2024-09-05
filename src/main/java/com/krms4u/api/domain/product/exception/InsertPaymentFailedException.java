package com.krms4u.api.domain.product.exception;

public class InsertPaymentFailedException extends RuntimeException {

    public InsertPaymentFailedException(String message) {
        super(message);
    }

    public InsertPaymentFailedException() {
        this("결제 데이터 삽입을 실패하였습니다.");
    }

}
