package com.krms4u.api.domain.user.vo;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
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
	
	@NotEmpty(message = "이름을 입력해 주세요.")
	private String name; // 이름

	@NotEmpty(message = "이메일을 입력해 주세요.")
	@Email(message = "잘못된 이메일 형식입니다.")
	private String email; // 이메일 username 쓸 아이

	@Pattern(
		    regexp = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[$@$!%*#?&])[A-Za-z0-9$@$!%*#?&]{8,15}$",
		    message = "비밀번호는 최소 하나 이상의 영문자, 숫자, 특수문자를 포함한 8자리 이상을 입력해야 합니다."
		)
	private String password; // 비밀번호
	
	private Timestamp created_at;
	
	private Timestamp updated_at;

}
