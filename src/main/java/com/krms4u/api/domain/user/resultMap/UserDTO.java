package com.krms4u.api.domain.user.resultMap;

import com.krms4u.api.domain.orders.vo.OrdersVO;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
public class UserDTO {
    private Long memberId; // 멤버번호

    private String roles; // 권한

    private String name; // 이름

    private String email; // 이메일

    private String password; // 비밀번호

    private Timestamp createdAt;

    private Timestamp updatedAt;

    private List<OrdersVO> orders;

    public UserDTO(Long memberId, String roles, String name, String email, String password, Timestamp createdAt, Timestamp updatedAt) {
        this.memberId = memberId;
        this.roles = roles;
        this.name = name;
        this.email = email;
        this.password = password;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }
}
