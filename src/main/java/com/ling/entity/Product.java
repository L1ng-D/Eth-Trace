package com.ling.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;

@Data
@ApiModel("产品")
public class Product {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Integer id;

    @ApiModelProperty("产品名")
    private String productName;

    @ApiModelProperty("产品状态")
    private Integer state;

    @ApiModelProperty("图片")
    private String image;

    @ApiModelProperty("种植时间")
    private LocalDateTime plantTime;

    @ApiModelProperty("产品信息描述")
    private String description;

    @ApiModelProperty("溯源码")
    private String traceCode;

    @ApiModelProperty("提交时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

}
