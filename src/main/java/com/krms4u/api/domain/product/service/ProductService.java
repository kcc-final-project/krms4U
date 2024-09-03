package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;

import java.util.List;

public interface ProductService {

	List<ProductWithImageRM> getProductList(); // 전체 상품 조회

	List<ProductListBest5RM> getProductBest5(); // 베스트5 상품 조회

}
