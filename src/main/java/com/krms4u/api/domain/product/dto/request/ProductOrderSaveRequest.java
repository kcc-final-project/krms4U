package com.krms4u.api.domain.product.dto.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.time.LocalDate;

@Builder
@AllArgsConstructor
@Getter
public class ProductOrderSaveRequest {

    private Long orderProductId; // 주문상품번호

    private Long orderId; // 주문번호

    private Long productId; // 상품번호

    private String contractDeadline; // 약정기한

    private String recipientName; // 수취인명

    private String recipientPhoneno; // 수취인 연락처

    private String postcode; // 우편번호

    private String address; // 주소

    private LocalDate wishDate; // 설치희망일

    private String orderState; // 주문상태

    private Integer automaticTransferDate; // 자동이체일

}
