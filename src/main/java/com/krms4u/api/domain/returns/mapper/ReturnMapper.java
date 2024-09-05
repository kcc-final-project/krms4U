package com.krms4u.api.domain.returns.mapper;

import com.krms4u.api.domain.returns.resultMap.ReturnDTO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReturnMapper {
    public List<ReturnDTO> getReturn(Long memberId);
}
