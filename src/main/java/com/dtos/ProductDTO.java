package com.dtos;

import java.io.Serializable;
import java.util.ArrayList;

public class ProductDTO implements Serializable {
    private String idProduct;
    private String tenProduct;
    private String loai;
    private String chatLieu;
    private int giaTien;
    private int soLuongTrongKho;
    private int danhGia;
    private int amount;
    private String tinhTrang;
    private ArrayList<String> images;
    private String firstImage;

    public ProductDTO() {
        this.images = new ArrayList<>();
        if (soLuongTrongKho == 0) {
            this.tinhTrang = "Còn hàng";
        } else {
            this.tinhTrang = "Hết hàng";
        }
    }

    public ProductDTO(String idProduct, String tenProduct, String loai, String chatLieu, int giaTien, int soLuongTrongKho, int danhGia, String tinhTrang, ArrayList<String> images) {
        this.images = new ArrayList<>();
        this.idProduct = idProduct;
        this.tenProduct = tenProduct;
        this.loai = loai;
        this.chatLieu = chatLieu;
        this.giaTien = giaTien;
        this.soLuongTrongKho = soLuongTrongKho;
        this.danhGia = danhGia;
        this.danhGia = danhGia;
        if (soLuongTrongKho == 0) {
            this.tinhTrang = "Còn hàng";
        } else {
            this.tinhTrang = "Hết hàng";
        }

    }

    public ProductDTO(String idProduct, String tenProduct, String loai, String chatLieu, int giaTien, int soLuongTrongKho, int danhGia, String tinhTrang, String firstImage) {
        this.images = new ArrayList<>();
        this.idProduct = idProduct;
        this.tenProduct = tenProduct;
        this.loai = loai;
        this.chatLieu = chatLieu;
        this.giaTien = giaTien;
        this.soLuongTrongKho = soLuongTrongKho;
        this.danhGia = danhGia;
        if (soLuongTrongKho == 0) {
            this.tinhTrang = "Còn hàng";
        } else {
            this.tinhTrang = "Hết hàng";
        }
        this.firstImage = images.get(0);
    }

    public ProductDTO(String idProduct, String tenProduct, String loai, String chatLieu, int giaTien, int soLuongTrongKho, int danhGia, String tinhTrang) {
        this.idProduct = idProduct;
        this.tenProduct = tenProduct;
        this.loai = loai;
        this.chatLieu = chatLieu;
        this.giaTien = giaTien;
        this.soLuongTrongKho = soLuongTrongKho;
        this.danhGia = danhGia;
        this.tinhTrang = tinhTrang;
        this.images = new ArrayList<>();
        this.firstImage = images.get(0);
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public ProductDTO(String idProduct, String tenProduct,int soLuongTrongKho ,int giaTien) {
        this.idProduct = idProduct;
        this.tenProduct = tenProduct;
        this.soLuongTrongKho = soLuongTrongKho;
        this.giaTien = giaTien;
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

    public int getSoLuongTrongKho() {
        return soLuongTrongKho;
    }

    public void setSoLuongTrongKho(int soLuongTrongKho) {
        this.soLuongTrongKho = soLuongTrongKho;
    }

    public int getDanhGia() {
        return danhGia;
    }

    public void setDanhGia(int danhGia) {
        this.danhGia = danhGia;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }


    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public ArrayList<String> getImages() {
        return images;
    }

    public void addImage(String image) {
        images.add(image);
    }

    public String getFirstImage() {
        return firstImage;
    }

    public void setFirstImage(String firstImage) {
        this.firstImage = firstImage;
    }

    @Override
    public String toString() {
        return "ProductDTO{" +
                "idProduct='" + idProduct + '\'' +
                ", tenProduct='" + tenProduct + '\'' +
                ", loai='" + loai + '\'' +
                ", chatLieu='" + chatLieu + '\'' +
                ", giaTien=" + giaTien +
                ", soLuongTrongKho=" + soLuongTrongKho +
                ", danhGia=" + danhGia +
                ", amount=" + amount +
                ", tinhTrang='" + tinhTrang + '\'' +
                ", images=" + images +
                ", firstImage='" + firstImage + '\'' +
                '}';
    }
}
