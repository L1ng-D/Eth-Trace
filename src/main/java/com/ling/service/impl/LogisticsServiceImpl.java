package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.dto.LogisticsDto;
import com.ling.entity.Crop;
import com.ling.entity.Detection;
import com.ling.entity.Logistics;
import com.ling.entity.LogisticsInfo;
import com.ling.mapper.CropMapper;
import com.ling.mapper.LogisticsMapper;
import com.ling.service.CropService;
import com.ling.service.LogisticsInfoService;
import com.ling.service.LogisticsService;
import com.ling.service.ProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class LogisticsServiceImpl extends ServiceImpl<LogisticsMapper, Logistics> implements LogisticsService {

    @Resource
    private LogisticsInfoService logisticsInfoService;

    @Override
    public Result queryWithPage(int page, int pageSize, String name, String destination) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<Logistics> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(destination), Logistics::getDestination, destination);
        queryWrapper.like(StrUtil.isNotEmpty(name), Logistics::getName, name);

        // 添加排序条件
        queryWrapper.orderByAsc(Logistics::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }

    @Override
    public Result queryInfo(Long id) {
        List<LogisticsInfo> list = logisticsInfoService.list(
                new LambdaQueryWrapper<LogisticsInfo>()
                        .eq(LogisticsInfo::getLogisticsId, id)
                        .orderByAsc(LogisticsInfo::getUpdateTime)
        );
        return Result.ok(list);
    }
}
