package com.krms4u.api.domain.user.resultMap;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
public class UserDTO {
    private Long memberId;

    private String roles;

    private String name;

    private String email;

    private String password;

    private Timestamp createdAt;

    private Timestamp updatedAt;

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
