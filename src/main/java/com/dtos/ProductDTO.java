package com.dtos;

public class ProductDTO {
    private String idProduct;
    private String tenProduct;
    private String loai;
    private String chatLieu;
    private int giaTien;
    private String soLuongTrongKho;
    private String danhGia;
    private String tinhTrang;
    private String image;

    public ProductDTO() {
    }

    public ProductDTO(String idProduct, String tenProduct, String loai, String chatLieu, int giaTien, String soLuongTrongKho, String danhGia, String tinhTrang, String image) {
        this.idProduct = idProduct;
        this.tenProduct = tenProduct;
        this.loai = loai;
        this.chatLieu = chatLieu;
        this.giaTien = giaTien;
        this.soLuongTrongKho = soLuongTrongKho;
        this.danhGia = danhGia;
        this.tinhTrang = tinhTrang;
        this.image = image;
    }

    public String getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(String idProduct) {
        this.idProduct = idProduct;
    }

    public String getTenProduct() {
        return tenProduct;
    }

    public void setTenProduct(String tenProduct) {
        this.tenProduct = tenProduct;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getChatLieu() {
        return chatLieu;
    }

    public void setChatLieu(String chatLieu) {
        this.chatLieu = chatLieu;
    }

    public int getGiaTien() {
        return giaTien;
    }

    public void setGiaTien(int giaTien) {
        this.giaTien = giaTien;
    }

    public String getSoLuongTrongKho() {
        return soLuongTrongKho;
    }

    public void setSoLuongTrongKho(String soLuongTrongKho) {
        this.soLuongTrongKho = soLuongTrongKho;
    }

    public String getDanhGia() {
        return danhGia;
    }

    public void setDanhGia(String danhGia) {
        this.danhGia = danhGia;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ProductDTO{" +
                "idProduct='" + idProduct + '\'' +
                ", tenProduct='" + tenProduct + '\'' +
                ", loai='" + loai + '\'' +
                ", chatLieu='" + chatLieu + '\'' +
                ", giaTien=" + giaTien +
                ", soLuongTrongKho='" + soLuongTrongKho + '\'' +
                ", danhGia='" + danhGia + '\'' +
                ", tinhTrang='" + tinhTrang + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
