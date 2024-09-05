package com.krms4u.api.domain.product.dto.resultMap;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public class ProductWithImageRM implements RentableProduct {

    private final Long productId; // 상품번호

    private final String modelCode; // 모델코드

    private final String modelName; // 상품명

    private final Integer orderFee; // 구매금액

    private final String folderPath; // 폴더경로

    private final String fileName; // 파일이름

    private Integer monthRentalFee; // 월 렌탈 요금

    @Override
    public int getOrderFee() {
        return orderFee;
    }

    @Override
    public void updateMonthRentalFee(final int monthMinRentalFee) {
        this.monthRentalFee = monthMinRentalFee;
    }

}
