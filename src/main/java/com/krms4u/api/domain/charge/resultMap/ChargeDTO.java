package com.krms4u.api.domain.charge.resultMap;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.krms4u.api.domain.charge.vo.ChargeVO;
import com.krms4u.api.domain.check.vo.CheckVO;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class ChargeDTO {
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String memberId;
	private String email;
	private Long orderId;
	private Long orderProductId;
	private String productId;
	private String modelName;
	private String modelCode;
	private String wishDate;
	private String postcode;
	private String address;
	private String recipientName;
	private String recipientPhoneno;
	private String contractDeadline;
	private Integer automaticTransferDate;
	private String orderDate;
	private String chargeDate;
	private String chargeId;
	private String bankName;
	private String cardNumber;
	private String rentalFee;
	private String payDate;

	private List<ChargeVO> charges;
	private List<CheckVO> checks;

	public ChargeDTO(Long orderProductId, Long orderId, Long productId, String contractDeadline, String recipientPhoneno, String postcode, String address, String wishDate, String orderDate, Integer automaticTransferDate) {
		this.orderProductId = orderProductId;
		this.orderId = orderId;
		this.contractDeadline = contractDeadline;
		this.recipientPhoneno = recipientPhoneno;
		this.postcode = postcode;
		this.address = address;
		this.wishDate = wishDate;
		this.orderDate = orderDate;
		this.automaticTransferDate = automaticTransferDate;
	}
}
