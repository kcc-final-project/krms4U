package com.krms4u.api.domain.returns.controller;

import com.krms4u.api.domain.returns.resultMap.ReturnDTO;
import com.krms4u.api.domain.returns.service.ReturnService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/admin")
@RestController
@AllArgsConstructor
@Slf4j
public class ReturnController {

	private ReturnService returnService;

	@GetMapping("/return/{memberId}")
	@ResponseBody
	public ResponseEntity<List<ReturnDTO>> getOrderPop(@PathVariable Long memberId) {
		List<ReturnDTO> returnDTOS = returnService.getReturns(memberId);
		return returnDTOS == null ? new ResponseEntity<>(null, HttpStatus.NOT_FOUND)
				: new ResponseEntity<>(returnDTOS, HttpStatus.OK);
	}

}