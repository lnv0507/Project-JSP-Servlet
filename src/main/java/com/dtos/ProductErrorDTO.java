package com.dtos;

public class ProductErrorDTO {
    private String idProductError;
    private String tenProductError;
    private String loaiError;
    private String chatLieuError;
    private int giaTienError;
    private int soLuongTrongKhoError;
    private String danhGiaError;
    private String tinhTrangError;
    private String imageError;

    public ProductErrorDTO(String idProductError, String tenProductError, String loaiError, String chatLieuError, int giaTienError, int soLuongTrongKhoError, String danhGiaError, String tinhTrangError, String imageError) {
        this.idProductError = idProductError;
        this.tenProductError = tenProductError;
        this.loaiError = loaiError;
        this.chatLieuError = chatLieuError;
        this.giaTienError = giaTienError;
        this.soLuongTrongKhoError = soLuongTrongKhoError;
        this.danhGiaError = danhGiaError;
        this.tinhTrangError = tinhTrangError;
        this.imageError = imageError;
    }

    public String getIdProductError() {
        return idProductError;
    }

    public void setIdProductError(String idProductError) {
        this.idProductError = idProductError;
    }

    public String getTenProductError() {
        return tenProductError;
    }

    public void setTenProductError(String tenProductError) {
        this.tenProductError = tenProductError;
    }

    public String getLoaiError() {
        return loaiError;
    }

    public void setLoaiError(String loaiError) {
        this.loaiError = loaiError;
    }

    public String getChatLieuError() {
        return chatLieuError;
    }

    public void setChatLieuError(String chatLieuError) {
        this.chatLieuError = chatLieuError;
    }

    public int getGiaTienError() {
        return giaTienError;
    }

    public void setGiaTienError(int giaTienError) {
        this.giaTienError = giaTienError;
    }

    public int getSoLuongTrongKhoError() {
        return soLuongTrongKhoError;
    }

    public void setSoLuongTrongKhoError(int soLuongTrongKhoError) {
        this.soLuongTrongKhoError = soLuongTrongKhoError;
    }

    public String getDanhGiaError() {
        return danhGiaError;
    }

    public void setDanhGiaError(String danhGiaError) {
        this.danhGiaError = danhGiaError;
    }

    public String getTinhTrangError() {
        return tinhTrangError;
    }

    public void setTinhTrangError(String tinhTrangError) {
        this.tinhTrangError = tinhTrangError;
    }

    public String getImageError() {
        return imageError;
    }

    public void setImageError(String imageError) {
        this.imageError = imageError;
    }

    public ProductErrorDTO() {
    }

    @Override
    public String toString() {
        return "ProductErrorDTO{" +
                "idProductError='" + idProductError + '\'' +
                ", tenProductError='" + tenProductError + '\'' +
                ", loaiError='" + loaiError + '\'' +
                ", chatLieuError='" + chatLieuError + '\'' +
                ", giaTienError=" + giaTienError +
                ", soLuongTrongKhoError=" + soLuongTrongKhoError +
                ", danhGiaError='" + danhGiaError + '\'' +
                ", tinhTrangError='" + tinhTrangError + '\'' +
                ", imageError='" + imageError + '\'' +
                '}';
    }
}
