package com.dtos;

import java.sql.Timestamp;
import java.util.ResourceBundle;

public class VanChuyenDTO {
    private String maHoaDon;
    private String tenKhachHang;
    private String email;
    private String soDienThoai;
    private String address;
    private String donViVanChuyen;
    private int tongTien;
    private Timestamp ngaygiao;
    private String trangThai;

    public VanChuyenDTO(String maHoaDon, String tenKhachHang, String email, String soDienThoai, String address, String donViVanChuyen, int tongTien, Timestamp ngaygiao, String trangThai) {
        this.maHoaDon = maHoaDon;
        this.tenKhachHang = tenKhachHang;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.address = address;
        this.donViVanChuyen = donViVanChuyen;
        this.ngaygiao = ngaygiao;
        this.trangThai = trangThai;
        this.tongTien = tongTien;
    }

    public VanChuyenDTO() {
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }

    public Timestamp getNgaygiao() {
        return ngaygiao;
    }

    public void setNgaygiao(Timestamp ngaygiao) {
        this.ngaygiao = ngaygiao;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
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
