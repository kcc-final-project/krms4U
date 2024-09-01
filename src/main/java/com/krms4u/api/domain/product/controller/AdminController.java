package com.krms4u.api.domain.product.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListRM;
import com.krms4u.api.domain.product.service.ProductService;
import com.krms4u.api.domain.product.vo.ProductVO;

import lombok.RequiredArgsConstructor;

@RequestMapping("/admin")
@Controller
@RequiredArgsConstructor
public class AdminController {
	
	private final ProductService productService;
	
	@GetMapping
	public String adminTemplete() {
		

		return "adminTemplete";
	}

}