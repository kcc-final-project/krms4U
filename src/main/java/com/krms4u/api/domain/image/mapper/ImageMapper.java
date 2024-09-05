package com.krms4u.api.domain.image.mapper;

import com.krms4u.api.domain.image.dto.resultMap.ImageRM;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImageMapper {
    void saveImage(ImageRM imageRM);
}
