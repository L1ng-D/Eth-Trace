package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.dto.RegisterFormDto;
import com.ling.entity.User;
import com.ling.entity.UserApplication;

public interface UserApplicationService extends IService<UserApplication> {


    Result pageWithUser(int page, int pageSize, Integer status);
}
