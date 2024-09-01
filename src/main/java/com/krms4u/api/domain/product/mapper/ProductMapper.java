package com.krms4u.api.domain.product.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListRM;
import com.krms4u.api.domain.product.vo.ProductVO;

@Mapper
public interface ProductMapper {
	
	List<ProductListRM> selectProductList(); // 나중에 구현
	
	List<ProductListBest5RM> selectProductBest5(); 
	
}
