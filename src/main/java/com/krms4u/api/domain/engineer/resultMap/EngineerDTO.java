package com.krms4u.api.domain.engineer.resultMap;

import com.krms4u.api.domain.check.vo.CheckVO;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
public class EngineerDTO {
	private Long engineerId;
	private String engineerName;
	private String engineerPosition;

	private List<CheckVO> checks;

	public EngineerDTO(Long engineerId, String engineerName, String engineerPosition) {
		this.engineerId = engineerId;
		this.engineerName = engineerName;
		this.engineerPosition = engineerPosition;
	}
}
