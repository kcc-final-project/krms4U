package com.krms4u.api.domain.charge.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChargeVO {
	private Long chargeId;
	private Long orderProductId;
	private Integer chargeCount;
	private Integer remainingCount;
	private Timestamp chargeDate;
}
