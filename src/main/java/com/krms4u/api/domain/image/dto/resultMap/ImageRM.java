package com.krms4u.api.domain.image.dto.resultMap;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class ImageRM {
    private final Long image_id; // 이미지번호

    private final Long product_id; // 상품번호

    private final String folder_path; // 폴더 경로

    private final String file_name; // 파일 이름
}
