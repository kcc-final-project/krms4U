package com.krms4u.api.domain.product.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListRM;
import com.krms4u.api.domain.product.mapper.ProductMapper;
import com.krms4u.api.domain.product.vo.ProductVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

	private final ProductMapper productMapper;
	
	@Override
	public List<ProductListRM> getProductList() {
		return productMapper.selectProductList();
	}

	@Override
	public List<ProductListBest5RM> getProductBest5() {
		return productMapper.selectProductBest5();
	}

}
