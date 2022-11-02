package com.ling.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ling.entity.Crop;
import com.ling.mapper.CropMapper;
import com.ling.service.CropService;
import org.springframework.stereotype.Service;

@Service
public class CropServiceImpl extends ServiceImpl<CropMapper, Crop> implements CropService {
}
