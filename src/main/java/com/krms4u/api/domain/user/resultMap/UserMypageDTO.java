package com.krms4u.api.domain.user.resultMap;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserMypageDTO {
	private Long orderProductId; //주문상품번호
	
    private  String folderPath; // 폴더경로

    private  String fileName; // 파일이름
    
    private  String modelName; // 상품명
    
    private String name; //이름
    
    private String modelCode; //모델코드 
    
    
}
