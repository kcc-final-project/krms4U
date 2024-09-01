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

@RequestMapping("/products")
@Controller
@RequiredArgsConstructor
public class ProductController {

	private final ProductService productService;

	/**
	 * 전체 상품 페이지
	 */
	@GetMapping
	public String getProductListPage() {
		// TODO: model.addAttribute(인증정보)

		// List<ProductListRM> productList = productService.getProductList();

		List<ProductListBest5RM> productBest5 = productService.getProductBest5();
		for (ProductListBest5RM product : productBest5) {
			System.out.println(product);
		}
		// model에 전달

		return "productList";
	}

}
