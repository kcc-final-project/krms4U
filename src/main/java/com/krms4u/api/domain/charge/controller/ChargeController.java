package com.krms4u.api.domain.charge.controller;

import com.krms4u.api.domain.charge.service.ChargeService;
import com.krms4u.api.domain.charge.vo.ChargeVO;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/admin")
@Controller
@AllArgsConstructor
public class ChargeController {

	private ChargeService chargeService;

	@GetMapping("/charge")
	public String retrieveAllCharges(Model model) {
		List<ChargeVO> chargeVOList = chargeService.findAll();
		model.addAttribute("charges", chargeVOList);

		return "chargeMain";
	}

}