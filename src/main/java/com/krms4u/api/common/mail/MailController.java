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
            mailTO.setTitle("밤둘레 님이 발송한 이메일입니다.");
            mailTO.setMessage("안녕하세요. 반가워요!");

            mailService.sendMail(mailTO);
            return ResponseEntity.ok("Email sent successfully to " + email);
        } catch (Exception e) {
            e.printStackTrace(); // 콘솔에 스택 트레이스 출력
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error sending email: " + e.getMessage());
        }

    }
}
