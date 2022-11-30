package com.ling.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import java.time.LocalDateTime;

@Data
@ApiModel("农产品")
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_product")
public class Product {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Long id;

    @ApiModelProperty("产品名")
    private String name;

    @ApiModelProperty("产品状态")
    private Integer status;

    @ApiModelProperty("上传单位")
    private String company;

    @ApiModelProperty("种植区域")
    private String area;

    @ApiModelProperty("是否审核通过")
    private int isPass;

    @ApiModelProperty("图片")
    private String image;

    @ApiModelProperty("溯源码")
    private String traceCode;

    @ApiModelProperty("提交时间")
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    @ApiModelProperty("更新时间")
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;

}
