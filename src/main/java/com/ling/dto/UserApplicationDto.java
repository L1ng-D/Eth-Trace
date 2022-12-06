package com.ling.dto;

import com.ling.entity.User;
import com.ling.entity.UserApplication;
import lombok.Data;
import org.web3j.abi.datatypes.Int;

import java.time.LocalDateTime;

@Data
public class UserApplicationDto extends UserApplication {
    private Integer role;

    private String name;

    private LocalDateTime create_time;
}
