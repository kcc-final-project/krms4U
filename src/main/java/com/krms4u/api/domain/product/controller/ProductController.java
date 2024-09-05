package com.krms4u.api.domain.product.controller;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/products")
@Controller
@RequiredArgsConstructor
public class ProductController {

	private final ProductService productService;

	@GetMapping
	public String getProductListPage() {
		List<ProductListBest5RM> productBest5 = productService.getProductBest5();
		for (ProductListBest5RM product : productBest5) {
			System.out.println(product);
		}

		return "productList";
	}

}
