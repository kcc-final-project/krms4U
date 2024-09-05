package com.krms4u.api.domain.engineer.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EngineerVO {
	private Long engineerId;
	private String engineerName;
	private String engineerPosition;
}
