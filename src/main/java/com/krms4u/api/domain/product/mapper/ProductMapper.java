package com.krms4u.api.domain.product.mapper;

import com.krms4u.api.domain.product.dto.request.PaymentSaveRequest;
import com.krms4u.api.domain.product.dto.request.ProductOrderRequest;
import com.krms4u.api.domain.product.dto.request.ProductOrderSaveRequest;
import com.krms4u.api.domain.product.dto.resultMap.PageDTO;
import com.krms4u.api.domain.product.dto.resultMap.ProductDetailRM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

@Mapper
public interface ProductMapper {
	
	List<ProductWithImageRM> selectProductList(PageDTO pageDTO);
	
	List<ProductListBest5RM> selectProductBest5(); 

	Optional<ProductDetailRM> selectProductById(Long productId);

	int selectProductTotalCount();

	int selectOrderIdAfterInsertOrder(ProductOrderRequest productOrderRequest);

	int insertProductOrder(ProductOrderSaveRequest productOrderSaveRequest);

	int insertPayment(PaymentSaveRequest paymentSaveRequest);

}
