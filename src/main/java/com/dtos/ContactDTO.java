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
}