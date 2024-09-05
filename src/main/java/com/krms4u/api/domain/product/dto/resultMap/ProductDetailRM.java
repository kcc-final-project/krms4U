package com.krms4u.api.domain.product.dto.resultMap;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Getter
public class ProductDetailRM {

    private final Long productId;

    private final String modelName;

    private final String modelCode;

    private final Integer orderFee;

    private final String productSize;

    private final String productPeriod;

    private final String productCapacity;

    private final String productPower;

    private final String productRelease;

    private final String productFuntion;

    private final String productWeight;

    private final String productMethod;

    private final String productInstall;

    private final String manufacturer;

    private final String folderPath;

    private final String fileName;

}
