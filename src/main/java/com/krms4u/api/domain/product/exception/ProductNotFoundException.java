package com.krms4u.api.domain.product.exception;

import com.krms4u.api.common.exception.ExceptionCode;

public class ProductNotFoundException extends RuntimeException {

	public ProductNotFoundException() {
		super(ExceptionCode.NOT_FOUND_PRODUCT.getErrorMessage());
	}

}
