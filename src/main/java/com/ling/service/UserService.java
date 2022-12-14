package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.dto.RegisterFormDto;
import com.ling.entity.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService extends IService<User> {
    Result register(RegisterFormDto registerFormDTO);

    Result login(User user, HttpServletRequest request);

    Result queryWithPage(int page, int pageSize, String name, Integer isDelete, Integer role);
}
