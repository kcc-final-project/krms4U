package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.mapper.UserMapper;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public void joinMember(UserVO user) {
        userMapper.joinMember(user);
    }
}
