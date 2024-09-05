package com.krms4u.api.domain.orders.resultMap;

import com.krms4u.api.domain.order_product.resultMap.OrderProductDTO;
import com.krms4u.api.domain.payment.vo.PaymentVO;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
public class OrdersDTO {
	private Long orderId;
	private Long memberId;
	private Timestamp orderDate;

	private List<OrderProductDTO> orderproduct;
	private PaymentVO payments;

	public OrdersDTO(Long orderId, Long memberId, Timestamp orderDate) {
		this.orderId = orderId;
		this.memberId = memberId;
		this.orderDate = orderDate;
	}
}
