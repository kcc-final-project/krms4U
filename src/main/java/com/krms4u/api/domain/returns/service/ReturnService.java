package com.krms4u.api.domain.returns.service;

import com.krms4u.api.domain.returns.mapper.ReturnMapper;
import com.krms4u.api.domain.returns.resultMap.ReturnDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReturnService {

    private final ReturnMapper returnMapper;

    public List<ReturnDTO> getReturns(Long memberId) {
        return returnMapper.getReturn(memberId);
    }
}
