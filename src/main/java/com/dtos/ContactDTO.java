package com.dtos;

import java.io.Serializable;

public class ContactDTO implements Serializable {
    private String maLienHe;
    private String tenAccount;
    private  String email;
     private  String  soDienThoai;
     private String mucCanLienHe;
     private String noiDung;
     private String trangThai;

    public ContactDTO(String maLienHe, String tenAccount, String email, String soDienThoai, String mucCanLienHe, String noiDung, String trangThai) {
        this.maLienHe = maLienHe;
        this.tenAccount = tenAccount;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.mucCanLienHe = mucCanLienHe;
        this.noiDung = noiDung;
        this.trangThai = trangThai;
    }

    public ContactDTO(String maLienHe, String tenAccount, String email, String soDienThoai, String mucCanLienHe, String noiDung) {
        this.maLienHe = maLienHe;
        this.tenAccount = tenAccount;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.mucCanLienHe = mucCanLienHe;
        this.noiDung = noiDung;
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

    public String getMucCanLienHe() {
        return mucCanLienHe;
    }

    public void setMucCanLienHe(String mucCanLienHe) {
        this.mucCanLienHe = mucCanLienHe;
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

    @Override
    public String toString() {
        return "ContactDTO{" +
                "maLienHe='" + maLienHe + '\'' +
                ", tenAccount='" + tenAccount + '\'' +
                ", email='" + email + '\'' +
                ", soDienThoai='" + soDienThoai + '\'' +
                ", mucCanLienHe='" + mucCanLienHe + '\'' +
                ", noiDung='" + noiDung + '\'' +
                ", trangThai='" + trangThai + '\'' +
                '}';
    }
}
