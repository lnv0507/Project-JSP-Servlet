package com.dtos;

import java.io.Serializable;

public class AccountDTO implements Serializable {
    private String idAccount;
    private String tenAccount;
    private String soDienThoai;
    private String diaChi;
    private String email;
    private String chucVu;
    private String passWord;

    public AccountDTO(String idAccount, String email, String passWord) {
        this.idAccount = idAccount;
        this.email = email;
        this.passWord = passWord;
    }

    public AccountDTO(String idAccount, String passWord) {
        this.idAccount = idAccount;
        this.passWord = passWord;
    }

    public AccountDTO(String idAccount, String tenAccount, String soDienThoai, String diaChi, String email, String chucVu, String passWord) {
        this.idAccount = idAccount;
        this.tenAccount = tenAccount;
        this.soDienThoai = soDienThoai;
        this.diaChi = diaChi;
        this.email = email;
        this.chucVu = chucVu;
        this.passWord = passWord;
    }

    public AccountDTO() {
    }

    public String getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(String idAccount) {
        this.idAccount = idAccount;
    }

    public String getTenAccount() {
        return tenAccount;
    }

    public void setTenAccount(String tenAccount) {
        this.tenAccount = tenAccount;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getChucVu() {
        return chucVu;
    }

    public void setChucVu(String chucVu) {
        this.chucVu = chucVu;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    @Override
    public String toString() {
        return "AccountDTO{" +
                "idAccount='" + idAccount + '\'' +
                ", tenAccount='" + tenAccount + '\'' +
                ", soDienThoai=" + soDienThoai +
                ", diaChi='" + diaChi + '\'' +
                ", email='" + email + '\'' +
                ", chucVu='" + chucVu + '\'' +
                ", passWord='" + passWord + '\'' +
                '}';
    }
}
