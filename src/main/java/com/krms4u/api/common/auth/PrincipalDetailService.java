package com.krms4u.api.common.auth;
import com.krms4u.api.domain.user.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import com.krms4u.api.domain.user.mapper.UserMapper;

@Service
public class PrincipalDetailService implements UserDetailsService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserVO userEntity = userMapper.findByUsername(username);
        if(userEntity != null) {
            return new PrincipalDetail(userEntity);
        }
        return null;
    }

}