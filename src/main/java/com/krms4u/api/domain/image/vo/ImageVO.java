package com.krms4u.api.domain.image.vo;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Data
public class ImageVO {
    private final Long image_id; // 이미지번호

    private final Long product_id; // 상품번호

    private final String folder_path; // 폴더 경로

    private final String file_name; // 파일 이름
}
