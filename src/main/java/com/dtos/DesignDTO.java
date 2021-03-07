package com.dtos;

import com.dao.ProductDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class DesignDTO {
    String idDes;
    String nameDes;
    String type;
    String mota;
    ArrayList<String> imagesDes;
    ArrayList<String> listProducts;
    HashMap<String,Integer> hashProducts;
    public DesignDTO(){
        this.imagesDes = new ArrayList<>();
        hashProducts = new HashMap<>();
        listProducts = new ArrayList<>();
    }

    public DesignDTO(String idDes, String nameDes,String type,String mota) {
        this.type = type;
        this.idDes = idDes;
        this.nameDes = nameDes;
        this.mota = mota;
        this.imagesDes = new ArrayList<>();
        hashProducts = new HashMap<>();
        listProducts = new ArrayList<>();
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public HashMap<String, Integer> getHashProducts() {
        return hashProducts;
    }
    public int getCountByIdProduct(String id){
        return hashProducts.get(id);
    }


    public String getIdDes() {
        return idDes;
    }

    public void setIdDes(String idDes) {
        this.idDes = idDes;
    }

    public String getNameDes() {
        return nameDes;
    }

    public void setNameDes(String nameDes) {
        this.nameDes = nameDes;
    }

    public ArrayList<String> getImagesDes() {
        return imagesDes;
    }

    public void addImagesDes(String image) {
        this.imagesDes.add(image);
    }

    public ArrayList<String> getListProducts() {
        return listProducts;
    }

    public void addProduct(String id, int num){
        hashProducts.put(id,num);
        listProducts.add(id);
    }

    public void removeProduct(String id){
        hashProducts.remove(id);
        listProducts.remove(id);
    }
    public void changeProductNum(String id,int num){
        hashProducts.put(id,num);
    }

    @Override
    public String toString() {
        return "DesignDTO{" +
                "idDes='" + idDes + '\'' +
                ", nameDes='" + nameDes + '\'' +
                ", type='" + type + '\'' +
                ", imagesDes=" + imagesDes +
                ", listProducts=" + listProducts +
                ", hashProducts=" + hashProducts +
                '}';
    }
}
