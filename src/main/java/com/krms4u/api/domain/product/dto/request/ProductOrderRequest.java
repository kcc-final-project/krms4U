package com.krms4u.api.domain.product.dto.request;

import com.krms4u.api.domain.product.vo.OrderState;
import lombok.*;

import java.time.LocalDate;

@NoArgsConstructor
@Builder
@AllArgsConstructor
@Getter
public class ProductOrderRequest {

    private Long orderId; // 주문번호 (null)

    private Long memberId; // 회원번호

    private Long productId; // 상품번호

    private Integer orderFee; // 상품가격

    private String contractDeadline; // 약정기한

    private String recipientName; // 수취인명

    private String recipientPhoneno; // 수취인 연락처

    private String postcode; // 우편번호

    private String address; // 주소

    private LocalDate wishDate; // 설치희망일

    private String bankName; // 은행명

    private String cardNumber; // 카드번호

    private String orderState
            = OrderState.WAITING_FOR_DELIVERY.getStateName(); // 주문상태

    private Integer automaticTransferDate; // 자동이체일

    public void updateMemberId(final Long memberId) {
        this.memberId = memberId;
    }

    public static PaymentSaveRequest toPaymentSaveRequest(final ProductOrderRequest request,
                                                          final Integer calculatedRentalFee) {
        return PaymentSaveRequest.builder()
                .orderId(request.getOrderId())
                .bankName(request.getBankName())
                .cardNumber(request.getCardNumber())
                .rentalFee(calculatedRentalFee)
                .build();
    }

    public static ProductOrderSaveRequest toProductOrderSaveRequest(final ProductOrderRequest request
    ) {
        return ProductOrderSaveRequest.builder()
                .orderId(request.getOrderId())
                .productId(request.getProductId())
                .contractDeadline(request.getContractDeadline())
                .recipientName(request.getRecipientName())
                .recipientPhoneno(request.getRecipientPhoneno())
                .postcode(request.getPostcode())
                .address(request.getAddress())
                .wishDate(request.getWishDate())
                .orderState(request.getOrderState())
                .automaticTransferDate(request.getAutomaticTransferDate())
                .build();
    }

}
