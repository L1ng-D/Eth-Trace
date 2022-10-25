package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.dto.RegisterFormDTO;
import com.ling.entity.User;

public interface UserService extends IService<User> {
    Result register(RegisterFormDTO registerFormDTO);

    Result login(User user);
}
