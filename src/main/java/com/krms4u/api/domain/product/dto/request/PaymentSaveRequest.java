package com.krms4u.api.domain.product.dto.request;

import lombok.*;

@Builder
@AllArgsConstructor
@Getter
public class PaymentSaveRequest {

    private Long orderId;

    private String bankName;

    private String cardNumber;

    private Integer rentalFee;

}
