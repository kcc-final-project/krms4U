package com.krms4u.api.domain.order_product.service;

import com.krms4u.api.domain.order_product.mapper.OrderProductMapper;
import com.krms4u.api.domain.order_product.resultMap.OrderPopDto;
import com.krms4u.api.domain.order_product.resultMap.OrderProductDTO;
import com.krms4u.api.domain.order_product.vo.OrderProductVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderProductService {

    private final OrderProductMapper orderProductMapper;

    public List<OrderProductDTO> findAll() {
        return orderProductMapper.findAllOrderProducts();
    }

    public List<OrderProductVO> findOrderListByOrderProductId(Long orderProductId) {
        return orderProductMapper.findOrderProduct(orderProductId);
    }

    public List<OrderPopDto> getOrderPop(String email) {
        return orderProductMapper.getOrderPopByEmail(email);
    }

    public OrderProductVO updateOrderProduct(OrderProductVO orderProductVO) {
        orderProductMapper.update(orderProductVO);

        return orderProductVO;
    }

    public void deleteOrderProduct(Long orderProductId) {
        orderProductMapper.deleteOrderProduct(orderProductId);
    }

}
