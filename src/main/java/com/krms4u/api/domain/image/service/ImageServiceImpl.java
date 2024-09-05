package com.krms4u.api.domain.image.service;

import com.krms4u.api.domain.image.dto.resultMap.ImageRM;
import com.krms4u.api.domain.image.mapper.ImageMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ImageServiceImpl implements ImageService {

    private final ImageMapper imageMapper;

    @Override
    public void saveImage(ImageRM imageRM) {
        imageMapper.saveImage(imageRM);
    }
}
