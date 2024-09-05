package com.krms4u.api.domain.charge.service;

import com.krms4u.api.domain.charge.mapper.ChargeMapper;
import com.krms4u.api.domain.charge.vo.ChargeVO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ChargeService {

    private final ChargeMapper chargeMapper;

    public List<ChargeVO> findAll() {
        return chargeMapper.findAllCharges();
    }

}
