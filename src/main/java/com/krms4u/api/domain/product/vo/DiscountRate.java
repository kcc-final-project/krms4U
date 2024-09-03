package com.krms4u.api.domain.product.vo;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public enum DiscountRate {

    MONTH_TWELVE("12개월", 0.3), MONTH_TWENTY_FOUR("24개월", 0.25), MONTH_THIRTY_SIX("36개월", 0.2);

    private final String name;
    private final double percent;

}
