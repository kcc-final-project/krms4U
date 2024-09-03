package com.krms4u.api.domain.product.controller;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;
import com.krms4u.api.domain.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/products")
@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    /**
     * 전체 상품 페이지
     */
    @GetMapping
    public String getProductListPage(Model model) {
        // TODO: model.addAttribute(인증정보)

        List<ProductWithImageRM> productList = productService.getProductList();
        List<ProductListBest5RM> productBest5 = productService.getProductBest5();

        for (ProductListBest5RM productListBest5RM : productBest5) {
            System.out.println(productListBest5RM);
        }

        model.addAttribute("productList", productList);
        model.addAttribute("productBest5", productBest5);

        return "productList";
    }

    // 상세 상품 조회
    @GetMapping("/{id}")
    public String getProductDetailPage(@PathVariable Long id, Model model) {
        System.out.println(id);
        return null;
    }

}
