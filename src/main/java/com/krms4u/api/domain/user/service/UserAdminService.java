package com.krms4u.api.domain.user.service;

import com.krms4u.api.domain.user.mapper.UserMapper;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserAdminService {

    public List<UserVO> selectAllUsers();
}