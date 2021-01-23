package com.dtos;

public class DonViVanChuyenDTO {
    private String nameDonVi;
    private String idDonVi;
    private String phiShip;

    public DonViVanChuyenDTO() {
    }

    public DonViVanChuyenDTO(String nameDonVi, String idDonVi, String phiShip) {
        this.nameDonVi = nameDonVi;
        this.idDonVi = idDonVi;
        this.phiShip = phiShip;
    }

    public String getNameDonVi() {
        return nameDonVi;
    }

    public void setNameDonVi(String nameDonVi) {
        this.nameDonVi = nameDonVi;
    }

    public String getIdDonVi() {
        return idDonVi;
    }

    public void setIdDonVi(String idDonVi) {
        this.idDonVi = idDonVi;
    }

    public String getPhiShip() {
        return phiShip;
    }

    public void setPhiShip(String phiShip) {
        this.phiShip = phiShip;
    }
}
