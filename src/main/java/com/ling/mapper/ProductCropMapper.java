package com.ling.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ling.entity.Product;
import com.ling.entity.ProductCrop;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductCropMapper extends BaseMapper<ProductCrop> {
}
