package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public interface UserService {
    void joinMember(UserVO user);
}
