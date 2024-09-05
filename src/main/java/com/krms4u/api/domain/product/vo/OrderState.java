package com.krms4u.api.domain.product.vo;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public enum OrderState {

    WAITING_FOR_DELIVERY("배송대기"),
    WAITING_FOR_ALLOCATION("기사 배정 대기"),
    DELIVERED("배송완료"),
    SHIPMENT_COMPLETED("출고완료");

    private final String stateName;

}
