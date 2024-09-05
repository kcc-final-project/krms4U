package com.krms4u.api.common.exception;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
@AllArgsConstructor
@Getter
public enum ExceptionCode {

	// 500
	CUSTOM_INTERNAL_SERVER_ERROR("서버에서 예상치 못한 에러가 발생했습니다."),

	// 400
	CUSTOM_INVALID_INPUT_DATA("입력된 데이터가 유효하지 않습니다."), NOT_FOUND_PRODUCT("존재하지 않는 제품입니다.");

	private String errorMessage;

}
