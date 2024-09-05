package com.krms4u.api.domain.order_product.resultMap;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderPopDto {
    private int orderProductId;
    private String email;
    private int productId;
    private String modelCode;
    private String modelName;
    private int rentalFee;
}
