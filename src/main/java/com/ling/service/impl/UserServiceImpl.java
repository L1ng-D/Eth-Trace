package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.dto.RegisterFormDto;
import com.ling.entity.User;
import com.ling.mapper.UserMapper;
import com.ling.service.UserService;
import com.ling.util.PasswordEncoder;
import com.ling.util.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {


    @Override
    public Result register(RegisterFormDto registerFormDTO) {
        String userName = registerFormDTO.getUserName();
        String password1 = registerFormDTO.getPassword();
        String password2 = registerFormDTO.getRepeatPassword();

        // 1.用户名为空
        if (userName == null) {
            return Result.fail("用户名为空！");
        }
        // 2.信息未全部填写
        if(password1 == null || password2 == null){
            return Result.fail("信息未全部填写!");
        }
        // 3.两次密码不一致
        if (!StrUtil.equals(password1, password2)){
            return Result.fail("两次密码不一致!");
        }
        // 4.判断用户名是否重复
        List<User> userList = query().eq("user_name", userName).list();
        if (userList != null && userList.size() > 0){
            return Result.fail("该用户名已存在！");
        }

        // 5.创建用户
        User user = new User();
        user.setUserName(userName);
        user.setPassword(PasswordEncoder.encode(password1));
        user.setRole(0);

        // 5.写入数据库
        save(user);

        // 6.返回
        return Result.ok("注册成功！");
    }

    @Override
    public Result login(User user, HttpServletRequest request) {
        String userName = user.getUserName();
        String password = user.getPassword();
        Integer role = user.getRole();

        //TODO: 1.检验空值
        if (userName == null){
            return Result.fail("用户名为空");
        }

        if (password == null) {
            return Result.fail("密码为空!");
        }
//
//        if (role == null) {
//            return Result.fail("未选择身份");
//        }

        // 2.查询数据库
        User userDB = query().eq("user_name", userName).one();

        if (userDB == null){
            return Result.fail("该用户不存在!");
        }

        if (!PasswordEncoder.matches(userDB.getPassword(), password)){
            return Result.fail("密码错误!");
        }

        request.getSession().setAttribute("user", userDB);

        return Result.ok(userDB);
    }

    @Override
    public Result queryWithPage(int page, int pageSize, String name, Integer isDelete, Integer role) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(name), User::getUserName, name);
        queryWrapper.eq(isDelete != null, User::getIsDelete, isDelete);
        queryWrapper.eq(role != null, User::getRole, role);

        // 添加排序条件
        queryWrapper.orderByAsc(User::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }
}
