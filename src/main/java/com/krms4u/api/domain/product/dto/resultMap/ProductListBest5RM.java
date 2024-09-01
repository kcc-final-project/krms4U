package com.krms4u.api.domain.product.dto.resultMap;

import jakarta.annotation.Generated;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@RequiredArgsConstructor
@Getter
@ToString
public class ProductListBest5RM {
	
	private final Long productId; // 상품번호

	private final String folderPath; // 폴더경로

	private final String fileName; // 파일이름

	private final Integer orderFee; // 구매요금

	// private final Integer rentalFee; // 렌탈요금(요금제 데이터 들어가면 포함)
	
}
