package com.dtos;

import java.util.ResourceBundle;

public class VanChuyenDTO {
    private String maHoaDon;
    private String tenKhachHang;
    private String email;
    private String soDienThoai;
    private String address;
    private String donViVanChuyen;

    public VanChuyenDTO(String maHoaDon, String tenKhachHang, String email, String soDienThoai, String address, String donViVanChuyen) {
        this.maHoaDon = maHoaDon;
        this.tenKhachHang = tenKhachHang;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.address = address;
        this.donViVanChuyen = donViVanChuyen;
    }

    public VanChuyenDTO() {
    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDonViVanChuyen() {
        return donViVanChuyen;
    }

    public void setDonViVanChuyen(String donViVanChuyen) {
        this.donViVanChuyen = donViVanChuyen;
    }

    @Override
    public String toString() {
        return "VanChuyenDTO{" +
                "maHoaDon='" + maHoaDon + '\'' +
                ", tenKhachHang='" + tenKhachHang + '\'' +
                ", email='" + email + '\'' +
                ", soDienThoai='" + soDienThoai + '\'' +
                ", address='" + address + '\'' +
                ", donViVanChuyen='" + donViVanChuyen + '\'' +
                '}';
    }

}
