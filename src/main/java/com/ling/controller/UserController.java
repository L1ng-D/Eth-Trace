package com.ling.controller;

import com.ling.common.R;
import com.ling.common.Result;
import com.ling.dto.RegisterFormDTO;
import com.ling.entity.User;
import com.ling.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Slf4j
@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    @PostMapping("/register")
    public Result register(@RequestBody RegisterFormDTO registerFormDTO){
        return userService.register(registerFormDTO);
    }

    @RequestMapping("/login")
    public Result login(@RequestBody User user){
        return userService.login(user);
    }




}
