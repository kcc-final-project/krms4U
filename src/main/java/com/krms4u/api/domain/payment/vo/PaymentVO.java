package com.krms4u.api.domain.payment.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PaymentVO {
	private Long orderId;
	private String bankName;
	private String cardNumber;
	private Integer rentalHee;
	private Timestamp payDate;
}
