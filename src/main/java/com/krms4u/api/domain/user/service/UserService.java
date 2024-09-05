package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.resultMap.UserMypageDTO;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserService {
    void joinMember(UserVO user);


    List<UserMypageDTO> applicationDetails(Long userId);


    String findByMypageUserId(String username);
}
