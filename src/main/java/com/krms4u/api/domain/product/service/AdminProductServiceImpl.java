package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.resultMap.AdminProductRM;
import com.krms4u.api.domain.product.mapper.AdminProductMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AdminProductServiceImpl implements AdminProductService {
    private final AdminProductMapper mapper;;
    @Override
    public List<AdminProductRM> selectAllProducts() {
        return mapper.selectAllProducts();
    }

    @Override
    public void saveProduct(AdminProductRM adminProductRM) {
        mapper.saveProduct(adminProductRM);

    }
}
