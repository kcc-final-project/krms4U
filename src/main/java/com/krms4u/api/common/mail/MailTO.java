package com.krms4u.api.common.mail;

import lombok.Data;

@Data
public class MailTO {
    private String address;
    private String title;
    private String message;
}