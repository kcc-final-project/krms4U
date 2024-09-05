package com.krms4u.api.domain.product.dto.resultMap;

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

	
}
