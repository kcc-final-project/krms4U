package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.request.ProductOrderRequest;
import com.krms4u.api.domain.product.dto.resultMap.PageDTO;
import com.krms4u.api.domain.product.dto.resultMap.ProductDetailRM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;

import java.util.List;

public interface ProductService {

    List<ProductWithImageRM> getProductList(final PageDTO pageDTO); // 전체 상품 조회(페이징)

    List<ProductListBest5RM> getProductBest5(); // 베스트5 상품 조회

    ProductDetailRM getProductDetail(final Long productId); // 상품 상세 조회

    int getProducTotal(); // 상품+이미지 총 갯수

    void saveProductOrder(final ProductOrderRequest request); // 렌탈 주문

}
