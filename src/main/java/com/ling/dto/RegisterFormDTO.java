package com.ling.dto;

import lombok.Data;

@Data

public class RegisterFormDTO {

    private String userName;

    private String password;

    private String repeatPassword;
}
