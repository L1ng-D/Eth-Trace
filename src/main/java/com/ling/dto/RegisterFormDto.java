package com.ling.dto;

import lombok.Data;

@Data
public class RegisterFormDto {

    private String userName;

    private String password;

    private String repeatPassword;
}
