package com.dtos;

import java.io.Serializable;

public class ContactDTO implements Serializable {
    private String maLienHe;
    private String tenAccount;
    private String email;
    private String soDienThoai;
    private String noiDung;
    private String trangThai;

    public ContactDTO() {
    }

    public ContactDTO(String maLienHe, String email, String soDienThoai, String noiDung, String tenAccount) {
        this.maLienHe = maLienHe;
        this.tenAccount = tenAccount;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.noiDung = noiDung;
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

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getMaLienHe() {
        return maLienHe;
    }

    public void setMaLienHe(String maLienHe) {
        this.maLienHe = maLienHe;
    }

    public String getTenAccount() {
        return tenAccount;
    }

    public void setTenAccount(String tenAccount) {
        this.tenAccount = tenAccount;
    }
}