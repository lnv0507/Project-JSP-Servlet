package com.dtos;

import java.io.Serializable;

public class ProductCartDTO implements Serializable {
    private ProductDTO pro;
    private int soLuong;

    public ProductCartDTO(ProductDTO pro, int soLuong) {
        this.pro = pro;
        this.soLuong = soLuong;
    }

    public ProductCartDTO(ProductDTO pro) {
        this.pro = pro;
    }

    public ProductCartDTO() {
    }

    public ProductDTO getPro() {
        return pro;
    }

    public void setPro(ProductDTO pro) {
        this.pro = pro;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }


}
