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
	private Integer remainingCount;
	private Integer chargeCount;

	private List<ChargeVO> charges;
	private List<CheckVO> checks;

	public ChargeDTO(String memberId, String email, Long orderId, Long orderProductId, String productId, String modelName, String modelCode, String wishDate, String postcode, String address, String recipientName, String recipientPhoneno, String contractDeadline, Integer automaticTransferDate, String orderDate, String chargeDate, String chargeId, String bankName, String cardNumber, String rentalFee, String payDate, Integer remainingCount, Integer chargeCount) {
		this.memberId = memberId;
		this.email = email;
		this.orderId = orderId;
		this.orderProductId = orderProductId;
		this.productId = productId;
		this.modelName = modelName;
		this.modelCode = modelCode;
		this.wishDate = wishDate;
		this.postcode = postcode;
		this.address = address;
		this.recipientName = recipientName;
		this.recipientPhoneno = recipientPhoneno;
		this.contractDeadline = contractDeadline;
		this.automaticTransferDate = automaticTransferDate;
		this.orderDate = orderDate;
		this.chargeDate = chargeDate;
		this.chargeId = chargeId;
		this.bankName = bankName;
		this.cardNumber = cardNumber;
		this.rentalFee = rentalFee;
		this.payDate = payDate;
		this.remainingCount = remainingCount;
		this.chargeCount = chargeCount;
	}
}
