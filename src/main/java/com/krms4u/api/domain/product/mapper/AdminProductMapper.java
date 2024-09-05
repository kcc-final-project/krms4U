package com.krms4u.api.domain.product.mapper;

import com.krms4u.api.domain.product.dto.resultMap.AdminProductRM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminProductMapper {
    List<AdminProductRM> selectAllProducts();
    void saveProduct(AdminProductRM adminProductRM);
}
