package com.krms4u.api.common.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/send-email")
public class MailController {

    @Autowired
    private MailService mailService;

    @PostMapping("")
    @ResponseBody
    public ResponseEntity<?> sendTestMail(@RequestParam String email) {

        if (email == null || email.isEmpty()) {
            return ResponseEntity.badRequest().body("Email address is missing.");
        }

        try {
            MailTO mailTO = new MailTO();
            mailTO.setAddress(email);
            mailTO.setTitle("[정숙케어] 안녕하세요. 정숙케어입니다.");
            mailTO.setMessage("안녕하세요:) 정숙케어입니다. 고객님의 정수기 렌탈 계약이 만료되었습니다. 계속해서 서비스를 이용하시려면 렌탈료를 납부해 주시기 바랍니다. 궁금한 점이 있으시면 언제든지 고객센터로 문의해 주세요. 감사합니다:)");

            mailService.sendMail(mailTO);
            return ResponseEntity.ok("Email sent successfully to " + email);
        } catch (Exception e) {
            e.printStackTrace(); // 콘솔에 스택 트레이스 출력
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error sending email: " + e.getMessage());
        }

    }
}
