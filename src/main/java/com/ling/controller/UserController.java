package com.ling.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.ling.common.Result;
import com.ling.dto.ProductCropDto;
import com.ling.dto.RegisterFormDto;
import com.ling.entity.Crop;
import com.ling.entity.User;
import com.ling.service.CropService;
import com.ling.service.ProductCropService;
import com.ling.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Slf4j
@RestController
@RequestMapping("/user")
@Api(tags = "用户")
public class UserController {

    @Resource
    private UserService userService;

    @Resource
    private CropService cropService;

    @PostMapping("/register")
    public Result register(@RequestBody RegisterFormDto registerFormDTO){
        return userService.register(registerFormDTO);
    }

    @PostMapping("/login")
    @ApiOperation(value = "登录")
    public Result login(@RequestBody User user, HttpServletRequest request){
        return userService.login(user, request);
    }

    @GetMapping("/page")
    public Result page(int page, int pageSize, String name, Integer isDelete, Integer role){
        return userService.queryWithPage(page, pageSize, name, isDelete, role);
    }

    @GetMapping("/{id}")
    public Result queryWithCrop(@PathVariable Long id){
        List<Crop> crops = cropService.list(new LambdaQueryWrapper<Crop>().eq(Crop::getUserId, id));
        return Result.ok(crops);
    }
}
