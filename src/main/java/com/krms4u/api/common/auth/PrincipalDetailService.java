package com.krms4u.api.common.auth;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.krms4u.api.domain.user.mapper.UserMapper;


//인증을 처리하기 위한 서비스 객체
@Service
public class PrincipalDetailService implements UserDetailsService {

    @Autowired
    private UserMapper userMapper;

    //config에서 로그인 prossing을 설정했는데 로그인 버튼을 누르면 로그인프로세스를 타고 열로온다.
    @Override //저기 String username에 자동으로 username이 박힘.
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
    	System.out.println("받아온 이메일은" + username);
        UserVO userEntity = userMapper.findByUsername(username);
        System.out.println("유저엔티티" + userEntity);
        
        if(userEntity != null) {
            //널이 아니면 유저를 UserDetails 객체로 만들어줘야한다.
            return new PrincipalDetail(userEntity);
        }

        return null;
    }

}
