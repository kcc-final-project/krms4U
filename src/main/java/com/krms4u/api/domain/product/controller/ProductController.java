package com.krms4u.api.domain.product.controller;

import com.krms4u.api.common.auth.PrincipalDetail;
import com.krms4u.api.domain.product.dto.request.ProductOrderRequest;
import com.krms4u.api.domain.product.dto.resultMap.PageDTO;
import com.krms4u.api.domain.product.dto.resultMap.ProductDetailRM;
import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;
import com.krms4u.api.domain.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/products")
@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService productService;

    /**
     * 전체 상품 페이지(1)
     */
    @GetMapping(params = "!page")
    public String getProductListPage(Model model) {
        PageDTO pageDTO = new PageDTO();
        pageDTO.setPage(1);

        List<ProductWithImageRM> productList = productService.getProductList(pageDTO);
        List<ProductListBest5RM> productBest5 = productService.getProductBest5();
        pageDTO.setTotal(productService.getProducTotal());

        model.addAttribute("productList", productList);
        model.addAttribute("productBest5", productBest5);
        model.addAttribute("pageDTO", pageDTO);

        return "productList";
    }

    @GetMapping(params = "page")
    @ResponseBody
    public ResponseEntity<?> getProductListPageWithPaging(PageDTO pageDTO) {
        List<ProductWithImageRM> productList = productService.getProductList(pageDTO);
        return ResponseEntity.ok().body(productList);
    }

    /*
     * 상세 상품 페이지
     */
    @GetMapping("/{id}")
    public String getProductDetailPage(@PathVariable final Long id, final Model model) {
        ProductDetailRM productDetail = productService.getProductDetail(id);
        model.addAttribute("productDetail", productDetail);
        return "productDetail";
    }

    /*
     * 추가 정보 입력 페이지
     */
    @PostMapping("/additionalInfo")
    public String getAdditionalInfoPage(@RequestParam("productId") final Long productId,
                                        @RequestParam("contractDeadline") final Integer contractDeadline,
                                        @RequestParam("orderFee") final Integer orderFee,
                                        final Model model) {
        model.addAttribute("productId", productId);
        model.addAttribute("contractDeadline", contractDeadline);
        model.addAttribute("orderFee", orderFee);
        return "additionalInfo";
    }

    /*
     * 렌탈(주문)하기 API
     */
    @PostMapping("/order")
    @ResponseBody
    public ResponseEntity<?> saveProductOrder(@AuthenticationPrincipal PrincipalDetail principalDetail,
                                              @RequestBody final ProductOrderRequest request) {
        request.updateMemberId(principalDetail.getMemberId());
        productService.saveProductOrder(request);
        return ResponseEntity.status(HttpStatus.CREATED).build();
    }

}
