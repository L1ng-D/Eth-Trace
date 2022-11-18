package com.ling.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ling.entity.Crop;
import com.ling.entity.Detection;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DetectionMapper extends BaseMapper<Detection> {
}
