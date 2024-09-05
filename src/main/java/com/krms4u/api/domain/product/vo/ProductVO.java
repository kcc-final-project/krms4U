package com.krms4u.api.domain.product.vo;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.time.LocalDateTime;

@RequiredArgsConstructor
@Getter
public class ProductVO {

    private final Long productId; // 상품번호

    private final String productCode; // 모델코드

    private final Integer orderFee; // 구매금액

    private final String productSize; // 크기

    private final String productPeriod; // 관리주기

    private final String productCapacity; // 탱크용량

    private final String productPower; // 소비전력

    private final String productRelease; // 출시년월

    private final String productFunction; // 주요기능

    private final String productWeight; // 무게

    private final String productMethod; // 직수방식

    private final String productInstall; // 설치형태

    private final String manufacturer; // 제조사

    private final LocalDateTime createdAt; // 생성날짜

    private final LocalDateTime updatedAt; // 수정날짜

}
