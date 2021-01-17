package com.dtos;

public class ProductCartDTO {
    private ProductDTO pro;
    private int soLuong;

    public ProductCartDTO(ProductDTO pro, int soLuong) {
        this.pro = pro;
        this.soLuong = soLuong;
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

    @Override
    public String toString() {
        return "ProductCartDTO{" +
                "pro=" + pro +
                ", soLuong=" + soLuong +
                '}';
    }
}
