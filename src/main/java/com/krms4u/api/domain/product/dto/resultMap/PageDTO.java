package com.krms4u.api.domain.product.dto.resultMap;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PageDTO {

    private static final int LIMIT_NUM = 8;

    private Integer total;
    private Integer page;
    private Integer limit = LIMIT_NUM;

}
