package com.krms4u.api.domain.user.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
public class UserVO {
    private Long memberId; // 멤버번호

    private String roles; // 권한

    private String name; // 이름

    private String email; // 이메일

    private String password; // 비밀번호

    private Timestamp createdAt;

    private Timestamp updatedAt;
}
