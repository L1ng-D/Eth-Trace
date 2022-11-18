package com.ling.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ling.common.Result;
import com.ling.entity.Crop;
import com.ling.entity.Detection;


public interface DetectionService extends IService<Detection> {
    Result queryWithPage(int page, int pageSize, String name, Integer isValid);
}
