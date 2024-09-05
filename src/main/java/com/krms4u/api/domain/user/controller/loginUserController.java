package com.krms4u.api.domain.user.controller;

import com.krms4u.api.common.auth.PrincipalDetail;
import com.krms4u.api.domain.user.resultMap.UserMypageDTO;
import com.krms4u.api.domain.user.service.UserService;
import com.krms4u.api.domain.user.vo.UserVO;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;


@Controller
public class loginUserController {

    @Autowired
    private UserService userService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @Secured("ROLE_ADMIN")
    @GetMapping("/admin")
    public String admin() {
        return "admin";
    }

    @PreAuthorize("hasRole('ROLE_MANAGER')or hasRole('ROLE_ADMIN')")
    @GetMapping("/manager")
    public String manager() {
        return "manager";
    }

    @GetMapping("/joinForm")
    public String joinForm(Model model) {
        model.addAttribute("user", new UserVO());
        return "joinForm";
    }

    @PostMapping("/join")
    public String join(@Valid @ModelAttribute("user") UserVO user, BindingResult br) {
        if (br.hasErrors()) {
            return "joinForm";
        }
        user.setRoles("ROLE_USER");
        String rawPassword = user.getPassword();
        String encPassword = encoder.encode(rawPassword);
        user.setPassword(encPassword);
        userService.joinMember(user);
        return "loginForm";
    }

    @GetMapping("/main")
    public String goToMain() {
        return "index";
    }

    @GetMapping("/mypage")
    public String goToMyPage(@AuthenticationPrincipal PrincipalDetail principalDetail,
                             Model model) {
        String name = principalDetail.getName();
        Long userId = principalDetail.getMemberId();
        List<UserMypageDTO> user = userService.applicationDetails(userId);
        model.addAttribute("user", user);
        model.addAttribute("name", name);
        return "memberMypage";
    }

}
