package com.krms4u.api.domain.returns.resultMap;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReturnDTO {
	private long returnId;
	private long orderProductId;
	private String modelName;
	private Timestamp collectionDate;
	private String returnStatus;

}
