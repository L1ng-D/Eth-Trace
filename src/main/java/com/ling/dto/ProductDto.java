package com.ling.dto;

import com.ling.entity.Product;
import lombok.Data;

import java.util.List;

@Data
public class ProductDto extends Product {

    private List<ProductCrop> crops;

}
