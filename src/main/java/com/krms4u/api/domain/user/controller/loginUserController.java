package com.krms4u.api.domain.user.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.krms4u.api.domain.user.resultMap.UserMypageDTO;
import com.krms4u.api.domain.user.service.UserService;
import com.krms4u.api.domain.user.vo.UserVO;
import jakarta.validation.Valid;
import java.util.List;


@Controller
public class loginUserController {

    @Autowired
    private UserService userService;

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

    @GetMapping("/joinForm")
    public String joinForm (Model model){
    	 model.addAttribute("user", new UserVO());
    	    return "joinForm";
    }

    @PostMapping("/join")
    public  String join  (@Valid @ModelAttribute("user") UserVO user,BindingResult br){
    	if(br.hasErrors()) {
    		return "joinForm";
    	}
        user.setRoles("ROLE_USER");
        String rawPassword = user.getPassword(); //날것 패스워드 가져오기
        String encPassword = encoder.encode(rawPassword);// 암호화 시키기
        user.setPassword(encPassword); // 유저 패스워드를 암호화된것으로 바꾸기
        userService.joinMember(user);
        return "loginForm";
    }
	 @GetMapping("/main") public String goToMain(){
	  return "index";
    }
	 
	 @GetMapping("/mypage")
	    public String goToMyPage(Model model) {
         System.out.println("마이페이지 호출");
         UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

         String username = userDetails.getUsername();
		 String userId = userService.findByMypageUserId(username);
         List<UserMypageDTO> user = userService.applicationDetails(userId);
		 model.addAttribute("user",user);
         System.out.println(user);
	     return "memberMypage";
	    }
}
