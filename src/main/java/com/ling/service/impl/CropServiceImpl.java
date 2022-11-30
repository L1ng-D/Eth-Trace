package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.CropGrowth;
import com.ling.entity.Logistics;
import com.ling.entity.LogisticsInfo;
import com.ling.mapper.CropMapper;
import com.ling.service.CropGrowthService;
import com.ling.service.CropService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CropServiceImpl extends ServiceImpl<CropMapper, Crop> implements CropService {

    @Resource
    private CropGrowthService cropGrowthService;


    @Override
    public Result queryWithPage(int page, int pageSize, String name, String place) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<Crop> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(name), Crop::getName, name);
        queryWrapper.like(StrUtil.isNotEmpty(place), Crop::getPlantPlace, place);

        // 添加排序条件
        queryWrapper.orderByAsc(Crop::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }

    @Override
    public Result queryInfo(Long id) {
        List<CropGrowth> list = cropGrowthService.list(
                new LambdaQueryWrapper<CropGrowth>()
                        .eq(CropGrowth::getCropId, id)
                        .orderByAsc(CropGrowth::getUpdateTime)
        );
        return Result.ok(list);
    }
}
