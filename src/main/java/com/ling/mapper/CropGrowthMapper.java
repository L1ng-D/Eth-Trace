package com.ling.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ling.entity.Crop;
import com.ling.entity.CropGrowth;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CropGrowthMapper extends BaseMapper<CropGrowth> {
}
