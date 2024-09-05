package com.krms4u.api.domain.product.controller;

import com.krms4u.api.common.utils.FileUtils;
import com.krms4u.api.domain.image.dto.resultMap.ImageRM;
import com.krms4u.api.domain.image.service.ImageService;
import com.krms4u.api.domain.product.dto.resultMap.AdminProductRM;
import com.krms4u.api.domain.product.service.AdminProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminProductController {
    private final AdminProductService adminProductService;
    private final ImageService imageService;
    private final FileUtils fileUtils;

    @GetMapping("/products")
    public String products(Model model) {

        List<AdminProductRM> productListRMList = adminProductService.selectAllProducts();

        model.addAttribute("products", productListRMList);
        model.addAttribute("productSize", productListRMList.size());

        return "adminProduct";
    }

    @GetMapping("/adminProductRegister")
    private String adminProductRegister() {
        return "adminProductRegister";
    }

    @PostMapping("/adminProductRegister")
    public String adminProductRegister(@ModelAttribute AdminProductRM adminProductRM, @RequestParam("file") MultipartFile file, Model model) {
        try {
            // 상품 정보를 데이터베이스에 저장하고 생성된 ID를 얻음
            adminProductService.saveProduct(adminProductRM);  // saveProduct가 상품 ID를 반환하도록 조정해야 할 수 있음
            // 이미지 파일을 S3에 업로드하고 URL을 받음
            String imageUrl = fileUtils.saveFile(file);

            // 이미지 정보를 ImageRM 객체에 설정
            ImageRM image = ImageRM.builder()
                    .product_id(adminProductRM.getProduct_id())
                    .folder_path(imageUrl)  // S3 버킷의 폴더 경로
                    .file_name("s3")  // 실제 파일 이름
                    .build();

            // 이미지 정보를 데이터베이스에 저장
            imageService.saveImage(image);

        } catch (IOException e) {
            model.addAttribute("error", "File upload failed: " + e.getMessage());
            return "adminProductRegister";  // 파일 업로드 실패시 동일한 페이지로 리다이렉트
        }
        return "redirect:/admin/products";
    }

}
