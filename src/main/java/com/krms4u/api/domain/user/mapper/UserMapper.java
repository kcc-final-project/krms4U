package com.krms4u.api.domain.user.mapper;
import com.krms4u.api.domain.user.resultMap.UserMypageDTO;
import com.krms4u.api.domain.user.vo.UserVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {
    List<UserVO> selectAllUsers();

    UserVO findByUsername(String username);

    void joinMember(UserVO user);

    List<UserMypageDTO> applicationDetails(Long userId);

    String findByMypageUserId(String username);
}
