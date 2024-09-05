package com.krms4u.api.domain.check.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CheckVO {
	private Long engineerId;
	private Long orderProductId;
	private Timestamp checkDate;
}
