package com.ling.service.impl;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.common.Result;
import com.ling.dto.ProductDto;
import com.ling.entity.Crop;
import com.ling.entity.Product;
import com.ling.entity.ProductCrop;
import com.ling.mapper.ProductMapper;
import com.ling.service.ProductCropService;
import com.ling.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductServiceImpl extends ServiceImpl<ProductMapper, Product> implements ProductService {

    @Resource
    private ProductCropService productCropService;

    /**
     * 产品分页查询
     * @param page
     * @param pageSize
     * @param name
     * @return
     */
    @Override
    public Result queryWithPage(int page, int pageSize, String name, Integer status) {
        // 1.构造分页构造器
        Page pageInfo = new Page(page, pageSize);

        // 2.构造条件构造器
        LambdaQueryWrapper<Product> queryWrapper = new LambdaQueryWrapper();
        // 3.添加一个过滤条件
        queryWrapper.like(StrUtil.isNotEmpty(name), Product::getName, name);
        queryWrapper.eq(status != null, Product::getStatus, status);
        queryWrapper.eq(Product::getIsPass, 1);
        // 添加排序条件
        queryWrapper.orderByAsc(Product::getId);

        // 执行查询
        page(pageInfo, queryWrapper);

        return Result.ok(pageInfo);
    }

    /**
     * 新增产品， 并向product_crop表中插入产品的成分
     * @param productDto
     * @return
     */
    @Override
    @Transactional
    public Result saveWithCrop(ProductDto productDto) {
        // 1.将产品存入product表
        this.save(productDto);

        // 2.获取dto中的crops
        List<ProductCrop> crops = productDto.getCrops();

        // 3.给每项crop加上所属的产品id
        crops.stream().map((item) -> {
            item.setProductId(productDto.getId());
            return item;
        }).collect(Collectors.toList());

        // 4.批量保存到product_crop表中
        productCropService.saveBatch(crops);

        return Result.ok("新增产品成功!");
    }
}
