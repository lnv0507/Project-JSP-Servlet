package com.dtos;

public class HoaDonDTO {
    private String maHoaDon;
    private String maDonViVanChuyen;
    private String maDonHang;
    private int thanhTien;
    private String idAccount;

    public HoaDonDTO(String maHoaDon, String maDonViVanChuyen, String maDonHang, int thanhTien, String idAccount) {
        this.maHoaDon = maHoaDon;
        this.maDonViVanChuyen = maDonViVanChuyen;
        this.maDonHang = maDonHang;
        this.thanhTien = thanhTien;
        this.idAccount = idAccount;
    }

    public HoaDonDTO() {
    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getMaDonViVanChuyen() {
        return maDonViVanChuyen;
    }

    public void setMaDonViVanChuyen(String maDonViVanChuyen) {
        this.maDonViVanChuyen = maDonViVanChuyen;
    }

    public String getMaDonHang() {
        return maDonHang;
    }

    public void setMaDonHang(String maDonHang) {
        this.maDonHang = maDonHang;
    }

    public int getThanhTien() {
        return thanhTien;
    }

    public void setThanhTien(int thanhTien) {
        this.thanhTien = thanhTien;
    }

    public String getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(String idAccount) {
        this.idAccount = idAccount;
    }
}
