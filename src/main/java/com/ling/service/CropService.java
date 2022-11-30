package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.Product;


public interface CropService extends IService<Crop> {
    Result queryWithPage(int page, int pageSize, String name, String place);

    Result queryInfo(Long id);
}
