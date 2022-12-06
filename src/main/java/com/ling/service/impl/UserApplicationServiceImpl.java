package com.ling.service.impl;

import cn.hutool.core.convert.Convert;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.dto.ProductDto;
import com.ling.dto.RegisterFormDto;
import com.ling.dto.UserApplicationDto;
import com.ling.entity.User;
import com.ling.entity.UserApplication;
import com.ling.mapper.UserApplicatonMapper;
import com.ling.mapper.UserMapper;
import com.ling.service.UserApplicationService;
import com.ling.service.UserService;
import com.ling.util.PasswordEncoder;
import com.ling.util.UserHolder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserApplicationServiceImpl extends ServiceImpl<UserApplicatonMapper, UserApplication> implements UserApplicationService {

    @Autowired
    private UserService userService;

    @Override
    public Result pageWithUser(int page, int pageSize, Integer status) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<UserApplication> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.eq(status != null, UserApplication::getStatus, status);

        // 添加排序条件
        queryWrapper.orderByDesc(UserApplication::getStatus);

        // 执行查询
        page(pageInfo, queryWrapper);

        List<UserApplication> records = pageInfo.getRecords();
        List<UserApplicationDto> res = new ArrayList<>();
        for (UserApplication record : records) {
            Long userId = record.getId();
            User user = userService.getById(userId);

            UserApplicationDto dto = Convert.convert(UserApplicationDto.class, record);
            dto.setName(user.getUserName());
            dto.setRole(user.getRole());
            dto.setCreate_time(user.getCreateTime());

            res.add(dto);
        }

        return Result.ok(res);
    }
}
