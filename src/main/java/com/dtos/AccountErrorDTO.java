package com.dtos;

public class AccountErrorDTO {
    private String idAccountError;
    private String tenAccountError;
    private int soDienThoaiError;
    private String diaChiError;
    private String emailError;
    private String chucVuError;
    private String passWordError;

    public AccountErrorDTO() {
    }

    public AccountErrorDTO(String idAccountError, String tenAccountError, int soDienThoaiError, String diaChiError, String emailError, String chucVuError, String passWordError) {
        this.idAccountError = idAccountError;
        this.tenAccountError = tenAccountError;
        this.soDienThoaiError = soDienThoaiError;
        this.diaChiError = diaChiError;
        this.emailError = emailError;
        this.chucVuError = chucVuError;
        this.passWordError = passWordError;
    }

    public String getIdAccountError() {
        return idAccountError;
    }

    public void setIdAccountError(String idAccountError) {
        this.idAccountError = idAccountError;
    }

    public String getTenAccountError() {
        return tenAccountError;
    }

    public void setTenAccountError(String tenAccountError) {
        this.tenAccountError = tenAccountError;
    }

    public int getSoDienThoaiError() {
        return soDienThoaiError;
    }

    public void setSoDienThoaiError(int soDienThoaiError) {
        this.soDienThoaiError = soDienThoaiError;
    }

    public String getDiaChiError() {
        return diaChiError;
    }

    public void setDiaChiError(String diaChiError) {
        this.diaChiError = diaChiError;
    }

    public String getEmailError() {
        return emailError;
    }

    public void setEmailError(String emailError) {
        this.emailError = emailError;
    }

    public String getChucVuError() {
        return chucVuError;
    }

    public void setChucVuError(String chucVuError) {
        this.chucVuError = chucVuError;
    }

    public String getPassWordError() {
        return passWordError;
    }

    public void setPassWordError(String passWordError) {
        this.passWordError = passWordError;
    }

    @Override
    public String toString() {
        return "AccountErrorDTO{" +
                "idAccountError='" + idAccountError + '\'' +
                ", tenAccountError='" + tenAccountError + '\'' +
                ", soDienThoaiError=" + soDienThoaiError +
                ", diaChiError='" + diaChiError + '\'' +
                ", emailError='" + emailError + '\'' +
                ", chucVuError='" + chucVuError + '\'' +
                ", passWordError='" + passWordError + '\'' +
                '}';
    }
}
