package com.krms4u.api.domain.charge.mapper;

import com.krms4u.api.domain.charge.vo.ChargeVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ChargeMapper {
    public List<ChargeVO> findAllCharges();

}
