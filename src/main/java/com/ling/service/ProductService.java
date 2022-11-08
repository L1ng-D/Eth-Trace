package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.dto.ProductDto;
import com.ling.entity.Product;

public interface ProductService extends IService<Product> {
    Result queryWithPage(int page, int pageSize, String name, Integer status);

    Result saveWithCrop(ProductDto productDto);
}
