package com.krms4u.api.common.utils;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.ObjectMetadata;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;


@Service
@RequiredArgsConstructor
public class FileUtils {
    private final AmazonS3 amazonS3;

    @Value("${cloud.aws.s3.bucket}")
    private String bucket;

    public String saveFile(MultipartFile multipartFile) throws IOException {
        // 1. 파일의 원래 이름을 가져옴
        String originalFilename = multipartFile.getOriginalFilename();

        // 2. UUID로 고유한 파일명 생성 (UUID + _ + originalFilename 형식)
        String uniqueFileName = UUID.randomUUID() + "_" + originalFilename;

        // 3. S3에 파일 업로드 시 메타데이터 설정
        ObjectMetadata metadata = new ObjectMetadata();
        metadata.setContentLength(multipartFile.getSize());
        metadata.setContentType(multipartFile.getContentType());

        // 4. S3에 고유한 파일 이름으로 파일을 업로드
        amazonS3.putObject(bucket, uniqueFileName, multipartFile.getInputStream(), metadata);

        // 5. 업로드된 파일의 S3 URL을 반환
        return amazonS3.getUrl(bucket, uniqueFileName).toString();
    }
}