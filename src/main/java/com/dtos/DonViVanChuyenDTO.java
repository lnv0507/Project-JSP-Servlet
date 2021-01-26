package com.dtos;

public class DonViVanChuyenDTO {
    private String maDonViVanChuyen;
    private String tenDonViVanChuyen;

    public DonViVanChuyenDTO() {
    }

    public DonViVanChuyenDTO(String maDonViVanChuyen, String tenDonViVanChuyen) {
        this.maDonViVanChuyen = maDonViVanChuyen;
        this.tenDonViVanChuyen = tenDonViVanChuyen;
    }

    public String getMaDonViVanChuyen() {
        return maDonViVanChuyen;
    }

    public void setMaDonViVanChuyen(String maDonViVanChuyen) {
        this.maDonViVanChuyen = maDonViVanChuyen;
    }

    public String getTenDonViVanChuyen() {
        return tenDonViVanChuyen;
    }


    public void setTenDonViVanChuyen(String tenDonViVanChuyen) {
        this.tenDonViVanChuyen = tenDonViVanChuyen;
    }

    @Override
    public String toString() {
        return "DonViVanChuyenDTO{" +
                "maDonViVanChuyen='" + maDonViVanChuyen + '\'' +
                ", tenDonViVanChuyen='" + tenDonViVanChuyen + '\'' +
                '}';
    }
}
