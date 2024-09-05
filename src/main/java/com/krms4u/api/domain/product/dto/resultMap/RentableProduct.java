package com.krms4u.api.domain.product.dto.resultMap;

public interface RentableProduct {

    int getOrderFee();

    void updateMonthRentalFee(final int monthMinRentalFee);

}
