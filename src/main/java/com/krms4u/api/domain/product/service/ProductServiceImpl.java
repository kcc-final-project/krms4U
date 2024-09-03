package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.resultMap.ProductListBest5RM;
import com.krms4u.api.domain.product.dto.resultMap.ProductWithImageRM;
import com.krms4u.api.domain.product.mapper.ProductMapper;
import com.krms4u.api.domain.product.vo.DiscountRate;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

    private final ProductMapper productMapper;

    @Override
    public List<ProductWithImageRM> getProductList() {

        final List<ProductWithImageRM> productList = productMapper.selectProductList();

        // 최소 월 렌탈 요금 적용
        calcMinMonthRentalFee(productList);

        return productList;
    }

    @Override
    public List<ProductListBest5RM> getProductBest5() {
        final List<ProductListBest5RM> productBestList = productMapper.selectProductBest5();

        // 최소 월 렌탈 요금 적용
        calcMinMonthRentalFeeByBest(productBestList);

        return productBestList;
    }

    // 월 렌탈 금액 계산
    private void calcMonthRentalFee(final ProductWithImageRM product, final DiscountRate discountRate) {

        final int monthRentalFee = (int) (product.getOrderFee() * (1 - discountRate.getPercent()) / 12);
        if (monthRentalFee < 0) {
            throw new IllegalArgumentException("월 렌탈 금액은 0 이하일 수 없습니다.");
        }

        product.updateMonthRentalFee(monthRentalFee);
    }

    private void calcMonthRentalFeeByBest(final ProductListBest5RM product, final DiscountRate discountRate) {

        final int monthRentalFee = (int) (product.getOrderFee() * (1 - discountRate.getPercent()) / 12);
        if (monthRentalFee < 0) {
            throw new IllegalArgumentException("월 렌탈 금액은 0 이하일 수 없습니다.");
        }

        product.updateMonthRentalFee(monthRentalFee);
    }

    // 최소 월 렌탈 금액 계산
    private void calcMinMonthRentalFee(final List<ProductWithImageRM> productList) {
        productList.stream()
                .forEach(product -> calcMonthRentalFee(product, DiscountRate.MONTH_TWELVE));
    }

    private void calcMinMonthRentalFeeByBest(final List<ProductListBest5RM> productList) {
        productList.stream()
                .forEach(product -> calcMonthRentalFeeByBest(product, DiscountRate.MONTH_TWELVE));
    }

}
