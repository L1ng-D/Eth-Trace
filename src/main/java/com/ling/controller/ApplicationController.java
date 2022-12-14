package com.ling.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.LambdaUpdateWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.ling.common.Result;
import com.ling.entity.User;
import com.ling.entity.UserApplication;
import com.ling.service.UserApplicationService;
import com.ling.service.UserService;
import com.ling.util.UserHolder;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import org.web3j.abi.datatypes.Int;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/application")
@Api(tags = "供应商申请")
public class ApplicationController {

    @Resource
    private UserApplicationService userApplicationService;

    @Resource
    private UserService userService;

    @ApiOperation(value = "提交申请")
    @PostMapping("/add")
    public Result addRequest(String file){
        Long userId = UserHolder.getUser().getId();
        UserApplication application = new UserApplication();
        application.setUserId(userId);
        application.setFile(file);
        application.setStatus(0);

        userApplicationService.save(application);
        return Result.ok("提交申请成功");
    }

    /**
     * 查看审批信息表
     * @return
     */
    @GetMapping("/page")
    public Result getAllList(int page, int pageSize, Integer status){
        return userApplicationService.pageWithUser(page, pageSize, status);
    }

    /**
     * 返回待审批数量
     * @return
     */
    @GetMapping("/count/pending")
    public Result getPendingCount(){
        int count = userApplicationService.count(new LambdaQueryWrapper<UserApplication>().eq(UserApplication::getStatus, 0));
        return Result.ok(count);
    }

    /**
     * 审批接口， 通过：status传 1  驳回：status传 2
     * @param id
     * @param status
     * @return
     */
    @PostMapping("/{id}/{status}")
    public Result approve(@PathVariable Long id, @PathVariable Integer status){
        userApplicationService.update(new LambdaUpdateWrapper<UserApplication>()
                .eq(UserApplication::getUserId, id)
                .set(UserApplication::getStatus, status));
        UserApplication application = userApplicationService.getById(id);
        if (status == 1){
            userService.update(new LambdaUpdateWrapper<User>().eq(User::getId, application.getUserId()).set(User::getRole, 2));
        }
        return Result.ok();
    }
}
