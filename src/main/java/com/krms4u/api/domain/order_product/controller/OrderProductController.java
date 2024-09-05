package com.krms4u.api.domain.order_product.controller;

import com.krms4u.api.domain.order_product.resultMap.OrderPopDto;
import com.krms4u.api.domain.order_product.resultMap.OrderProductDTO;
import com.krms4u.api.domain.order_product.service.OrderProductService;
import com.krms4u.api.domain.order_product.vo.OrderProductVO;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/admin")
@Controller
@AllArgsConstructor
@Slf4j
public class OrderProductController {

	private OrderProductService orderProductService;

	@GetMapping("/orderproduct")
	public String retrieveAllOrderProducts(Model model) {
		List<OrderProductDTO> orderProductDTOList = orderProductService.findAll();
		model.addAttribute("orderproducts", orderProductDTOList);

		return "orderMain";
	}

	@GetMapping("/get/{orderProductId}")
	@ResponseBody
	public ResponseEntity<List<OrderProductVO>> getOrderListByOrderProductId(@PathVariable Long orderProductId) {
		List<OrderProductVO> voList = orderProductService.findOrderListByOrderProductId(orderProductId);
		return voList == null ? new ResponseEntity<>(null, HttpStatus.NOT_FOUND)
				 : new ResponseEntity<>(voList, HttpStatus.OK);
	}

	@GetMapping("/orderPop/{email}")
	@ResponseBody
	public ResponseEntity<List<OrderPopDto>> getOrderListByEmail(@PathVariable String email) {
		List<OrderPopDto> orderPop = orderProductService.getOrderPop(email);
		return orderPop == null ? new ResponseEntity<>(null, HttpStatus.NOT_FOUND)
				: new ResponseEntity<>(orderPop, HttpStatus.OK);
	}

	// http://localhost:8081/admin/orderproducts/1
	@PutMapping("/orderproducts/{orderProductId}")
	public ResponseEntity<OrderProductVO> updateOrderProduct(@PathVariable("orderProductId") Long orderProductId, @RequestBody OrderProductVO orderProductVO) {
		orderProductVO.setOrderProductId(orderProductId);

		OrderProductVO updateOrderProduct = orderProductService.updateOrderProduct(orderProductVO);
		return new ResponseEntity<>(updateOrderProduct, HttpStatus.OK);
	}

	@DeleteMapping("/orderproduct/{orderProductId}")
	public void deleteOrderProductById(@PathVariable Long orderProductId) {
		orderProductService.deleteOrderProduct(orderProductId);
	}
}