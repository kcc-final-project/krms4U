package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListRM;

import java.util.List;

public interface ProductService {

    List<ProductListRM> getProductList(); // 전체 상품 조회

    List<ProductListBest5RM> getProductBest5(); // 베스트5 상품 조회

}