package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.mapper.UserMapper;
import com.krms4u.api.domain.user.vo.UserVO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserAdminServiceImpl implements UserAdminService {

    private final UserMapper mapper;

    @Override
    public List<UserVO> selectAllUsers() {
        return mapper.selectAllUsers();
    }
}
