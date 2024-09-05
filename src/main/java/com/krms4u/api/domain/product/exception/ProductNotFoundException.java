package com.krms4u.api.domain.product.exception;

public class ProductNotFoundException extends RuntimeException {

    public ProductNotFoundException(String message) {
        super(message);
    }

    public ProductNotFoundException() {
        this("존재하지 않는 제품입니다.");
    }

}
