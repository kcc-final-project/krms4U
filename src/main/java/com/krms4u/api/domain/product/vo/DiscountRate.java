package com.krms4u.api.domain.product.vo;

import com.krms4u.api.domain.product.exception.InvalidDiscountRateException;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor(access = AccessLevel.PRIVATE)
@Getter
public enum DiscountRate {
    // 약정 개월 수, 할인율
    MONTH_TWELVE("12", 0.3),
    MONTH_TWENTY_FOUR("24", 0.25),
    MONTH_THIRTY_SIX("36", 0.2);

    private final String name;
    private final double percent;

    public static double getDiscountPercent(String contractDeadline) {
        for (DiscountRate rate : DiscountRate.values()) {
            if (contractDeadline.equals(rate.getName())) {
                return rate.getPercent();
            }
        }
        throw new InvalidDiscountRateException(contractDeadline);
    }

}
