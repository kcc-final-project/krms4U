package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.request.PaymentSaveRequest;
import com.krms4u.api.domain.product.dto.request.ProductOrderRequest;
import com.krms4u.api.domain.product.dto.request.ProductOrderSaveRequest;
import com.krms4u.api.domain.product.dto.resultMap.*;
import com.krms4u.api.domain.product.exception.*;
import com.krms4u.api.domain.product.mapper.ProductMapper;
import com.krms4u.api.domain.product.vo.DiscountRate;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class ProductServiceImpl implements ProductService {

    private final ProductMapper productMapper;

    @Override
    public List<ProductWithImageRM> getProductList(PageDTO pageDTO) {

        final List<ProductWithImageRM> productList = productMapper.selectProductList(pageDTO);

        // 최소 월 렌탈 요금 적용
        calcMonthlyRentalFeeForProducts(productList, DiscountRate.MONTH_TWELVE);

        return productList;
    }

    @Override
    public List<ProductListBest5RM> getProductBest5() {

        final List<ProductListBest5RM> productBestList = productMapper.selectProductBest5();

        // 최소 월 렌탈 요금 적용
        calcMonthlyRentalFeeForProducts(productBestList, DiscountRate.MONTH_TWELVE);

        return productBestList;
    }

    @Override
    public ProductDetailRM getProductDetail(final Long productId) {
        return productMapper.selectProductById(productId)
                .orElseThrow(ProductNotFoundException::new);
    }

    @Override
    public int getProducTotal() {
        return productMapper.selectProductTotalCount();
    }

    @Transactional
    @Override
    public void saveProductOrder(final ProductOrderRequest request) {

        // 1) 주문 데이터 삽입
        final int orderResult = productMapper.selectOrderIdAfterInsertOrder(request);

        // 2) 주문상품 데이터 삽입
        ProductOrderSaveRequest productOrderSaveRequest
                = ProductOrderRequest.toProductOrderSaveRequest(request);
        final int productOrderResult = productMapper.insertProductOrder(productOrderSaveRequest);

        // 3) 결제 데이터 삽입
        final int calculatedRentalFee = getCalculatedRentalFee(request);
        PaymentSaveRequest paymentSaveRequest
                = ProductOrderRequest.toPaymentSaveRequest(request, calculatedRentalFee);
        final int paymentResult = productMapper.insertPayment(paymentSaveRequest);

        // *) 예외 발생
        if (orderResult == 0) {
            throw new InsertOrderFailedException();
        }
        if (productOrderResult == 0) {
            throw new InsertProductOrderFailedException();
        }
        if (paymentResult == 0) {
            throw new InsertPaymentFailedException();
        }

    }

    // 약정기한에 따른 월 렌탈 요금 계산
    private int getCalculatedRentalFee(ProductOrderRequest request) {
        final String contractDeadline = request.getContractDeadline();
        final double discountPercent = DiscountRate.getDiscountPercent(contractDeadline);
        final int orderFee = request.getOrderFee();
        final int calculatedRentalFee = (int) (orderFee * (1 - discountPercent) / 12);
        return calculatedRentalFee;
    }

    // 전체 상품 월 렌탈 금액 계산
    private <T extends RentableProduct> void calcMonthlyRentalFeeForProducts(final List<T> productList,
                                                                             final DiscountRate discountRate) {
        productList.forEach(product -> {
            calcRentalFeeEachProduct(product, discountRate);
        });
    }

    // 상품 월 렌탈 금액 계산
    private <T extends RentableProduct> void calcRentalFeeEachProduct(final T product,
                                                                      final DiscountRate discountRate) {
        final int monthRentalFee = (int) (product.getOrderFee() * (1 - discountRate.getPercent()) / 12);
        if (monthRentalFee < 0) {
            throw new InvalidRentalFeeException();
        }
        product.updateMonthRentalFee(monthRentalFee);
    }

}
