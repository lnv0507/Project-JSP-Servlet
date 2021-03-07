package com.dtos;

public class DonHangDTO {
    private String maDonHang;
    private String idAccount;
    private int tongThanhTien;

    public DonHangDTO(String maDonHang, String idAccount, int tongThanhTien) {
        this.maDonHang = maDonHang;
        this.idAccount = idAccount;
        this.tongThanhTien = tongThanhTien;
    }

    public DonHangDTO() {
    }

    public String getMaDonHang() {
        return maDonHang;
    }

    public void setMaDonHang(String maDonHang) {
        this.maDonHang = maDonHang;
    }

    public String getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(String idAccount) {
        this.idAccount = idAccount;
    }

    public int getTongThanhTien() {
        return tongThanhTien;
    }

    public void setTongThanhTien(int tongThanhTien) {
        this.tongThanhTien = tongThanhTien;
    }
}
