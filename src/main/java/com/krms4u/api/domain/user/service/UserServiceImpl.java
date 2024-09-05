package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.mapper.UserMapper;
import com.krms4u.api.domain.user.resultMap.UserMypageDTO;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public void joinMember(UserVO user) {
        userMapper.joinMember(user);
    }

	@Override
    public List<UserMypageDTO> applicationDetails(String userId) {

        return userMapper.applicationDetails(userId);
    }

    @Override
    public String findByMypageUserId(String username) {
        return userMapper.findByMypageUserId(username);
    }


}
