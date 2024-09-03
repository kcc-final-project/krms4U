package com.krms4u.api.domain.user.vo;

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

	private String email; // 이메일

	private String password; // 비밀번호

	private Timestamp created_at;

	private Timestamp updated_at;
}
