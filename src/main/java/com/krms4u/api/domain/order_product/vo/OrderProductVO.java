package com.krms4u.api.domain.order_product.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderProductVO {
	private Long orderProductId;
	private Long orderId;
	private Long productId;
	private String contractDeadline;
	private String recipientName;
	private String recipientPhoneno;
	private String postcode;
	private String address;
	private String wishDate;
	private String orderState;
	private Integer automaticTransferDate;
}
