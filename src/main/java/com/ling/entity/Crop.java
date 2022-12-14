package com.ling.entity;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("tb_crop")
public class Crop {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty("主键")
    private Long id;

    private String name;

    private Long userId;

    private String image;

    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime plantTime;

    private String plantPlace;

    private Long plantNum;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    @Override
    public String toString() {
        return "Crop{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", userId=" + userId +
                ", image='" + image + '\'' +
                ", plantTime=" + plantTime +
                ", plantPlace='" + plantPlace + '\'' +
                ", plantNum=" + plantNum +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
