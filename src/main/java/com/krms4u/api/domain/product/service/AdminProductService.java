package com.krms4u.api.domain.product.service;

import com.krms4u.api.domain.product.dto.resultMap.AdminProductRM;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface AdminProductService {
    List<AdminProductRM> selectAllProducts();
    void saveProduct(AdminProductRM adminProductRM);
}
