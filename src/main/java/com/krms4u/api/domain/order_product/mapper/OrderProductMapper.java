package com.krms4u.api.domain.order_product.mapper;

import com.krms4u.api.domain.order_product.resultMap.OrderPopDto;
import com.krms4u.api.domain.order_product.resultMap.OrderProductDTO;
import com.krms4u.api.domain.order_product.vo.OrderProductVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderProductMapper {
    public List<OrderProductDTO> findAllOrderProducts();

    public List<OrderProductVO> findOrderProduct(Long orderProductId);
    public void deleteOrderProduct(Long orderProductId);
    public List<OrderPopDto> getOrderPopByEmail(String email);
    public void update(OrderProductVO orderProductVO);
}
