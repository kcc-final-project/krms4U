package com.krms4u.api.domain.user.controller;
import com.krms4u.api.domain.user.service.UserService;
import com.krms4u.api.domain.user.vo.UserVO;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class loginUserController {

    @Autowired
    private UserService userService;

    //SecurityConfig에서 주입받아온다.
    @Autowired
    private BCryptPasswordEncoder encoder;

    @Secured("ROLE_ADMIN") //admin만 들어갈 수 있게 방법1
    @GetMapping("/admin")
    public  String admin (){
        return "admin";
    }

    @PreAuthorize("hasRole('ROLE_MANAGER')or hasRole('ROLE_ADMIN')")
    @GetMapping("/manager")
    public  String manager (){
        return "manager";
    }

//    @GetMapping("/loginForm")
//    public  String login (){
//        return "loginForm";
//    }


    @GetMapping("/joinForm")
    public String joinForm (){
        return "joinForm";
    }
//    @Valid
    @PostMapping("/join")
    public  String join (UserVO user){
        user.setRoles("ROLE_USER");
        String rawPassword = user.getPassword(); //날것 패스워드 가져오기
        String encPassword = encoder.encode(rawPassword);// 암호화 시키기
        user.setPassword(encPassword); // 유저 패스워드를 암호화된것으로 바꾸기
        userService.joinMember(user);
        return "loginForm";
    }

    @GetMapping("/main")
    public String goMain(){
            return "index";
    }
}
