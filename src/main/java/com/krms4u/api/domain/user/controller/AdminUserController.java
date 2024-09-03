package com.krms4u.api.domain.user.controller;

import com.krms4u.api.domain.user.service.UserAdminService;
import com.krms4u.api.domain.user.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminUserController {

	@Autowired
    private UserAdminService service;

    @GetMapping("/user")
    public String test(Model model) {
        List<UserVO> userlist = service.selectAllUsers();
//        System.out.println("userlist = " + userlist);
        int size = userlist.size();
        model.addAttribute("users", userlist); 
        model.addAttribute("usersize", size);
        
        return "adminUser";
    }
}
