package com.ling.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ling.entity.Crop;
import com.ling.entity.Product;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CropMapper extends BaseMapper<Crop> {
}
