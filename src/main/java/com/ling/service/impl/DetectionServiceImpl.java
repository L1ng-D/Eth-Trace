package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.Detection;
import com.ling.entity.Product;
import com.ling.mapper.CropMapper;
import com.ling.mapper.DetectionMapper;
import com.ling.service.CropService;
import com.ling.service.DetectionService;
import org.springframework.stereotype.Service;

@Service
public class DetectionServiceImpl extends ServiceImpl<DetectionMapper, Detection> implements DetectionService {


    @Override
    public Result queryWithPage(int page, int pageSize, String name, Integer isValid) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<Detection> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(name), Detection::getName, name);
        queryWrapper.eq(isValid != null, Detection::getIsValid, isValid);
        // 添加排序条件
        queryWrapper.orderByAsc(Detection::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }
}
