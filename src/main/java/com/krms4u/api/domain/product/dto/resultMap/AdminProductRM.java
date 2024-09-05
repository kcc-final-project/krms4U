package com.krms4u.api.domain.product.dto.resultMap;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@Builder
public class AdminProductRM {
    private final Long product_id; // 상품번호

    private final String model_code; // 모델명

    private final String model_name; // 상품명

    private final Integer order_fee; // 구매금액

    private final String product_size; // 크기

    private final String product_period; // 관리주기

    private final String product_capacity; // 탱크용량

    private final String product_power; // 소비전력

    private final String product_release; // 출시년월

    private final String product_funtion; // 주요기능

    private final String product_weight; // 무게

    private final String product_method; // 직수방식

    private final String product_install; // 설치형태

    private final String manufacturer; // 제조사

    private final Timestamp created_at; // 생성일

    private final Timestamp updated_at; //수정일
}
