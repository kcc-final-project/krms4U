package com.krms4u.api.domain.user.vo;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
    private Long member_id; // 멤버번호

    private String roles; // 권한

    private String name; // 이름

    @NotBlank
    @Email(message = "잘못된 이메일 형식입니다.")
    private String email; // 이메일 username 쓸 아이

    @NotBlank
    @Pattern(message = "잘못된 비밀번호 형식입니다."
            , regexp = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[$@$!%*#?&])[A-Za-z[0-9]$@$!%*#?&]{8,15}")
    private String password; // 비밀번호

    private Timestamp created_at;

    private Timestamp updated_at;
}
