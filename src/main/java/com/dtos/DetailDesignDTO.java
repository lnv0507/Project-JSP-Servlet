package com.dtos;

public class DetailDesignDTO {
    ProductDTO productDTO;
    int num;

    public DetailDesignDTO(){

    }

    public ProductDTO getProductDTO() {
        return productDTO;
    }

    public void setProductDTO(ProductDTO productDTO) {
        this.productDTO = productDTO;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }


    @Override
    public String toString() {
        return "DetailDesignDTO{" +
                "productDTO=" + productDTO +
                ", num=" + num +
                '}';
    }
}
