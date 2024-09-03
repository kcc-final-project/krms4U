package com.krms4u.api.domain.product.mapper;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductMapper {
	
	List<ProductWithImageRM> selectProductList(); // 나중에 구현
	
	List<ProductListBest5RM> selectProductBest5(); 
	
}
