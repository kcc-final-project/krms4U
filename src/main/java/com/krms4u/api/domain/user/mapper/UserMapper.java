package com.krms4u.api.domain.user.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.krms4u.api.domain.user.vo.UserVO;

@Mapper
public interface UserMapper {
//	List<UserVO> selectAllUsers();

	UserVO findByUsername(@Param("email") String email);

	void joinMember(UserVO user);
}
