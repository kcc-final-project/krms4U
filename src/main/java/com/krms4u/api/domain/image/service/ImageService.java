package com.krms4u.api.domain.image.service;

import com.krms4u.api.domain.image.dto.resultMap.ImageRM;
import org.springframework.stereotype.Service;

@Service
public interface ImageService {
    void saveImage(ImageRM imageRM);
}
