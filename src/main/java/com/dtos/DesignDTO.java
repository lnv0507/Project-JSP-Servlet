package com.dtos;

import java.util.ArrayList;
import java.util.HashMap;

public class DesignDTO {
    String idDes;
    String nameDes;
    String type;
    ArrayList<String> imagesDes;
    ArrayList<String> listProducts;
    HashMap<String,Integer> hashProducts;
    public DesignDTO(){
        this.imagesDes = new ArrayList<>();
        hashProducts = new HashMap<>();
        listProducts = new ArrayList<>();
    }

    public DesignDTO(String idDes, String nameDes,String type) {
        this.type = type;
        this.idDes = idDes;
        this.nameDes = nameDes;
        this.imagesDes = new ArrayList<>();
        hashProducts = new HashMap<>();
        listProducts = new ArrayList<>();
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
    public int getCountByIdProduct(){
        return hashProducts.get(idDes);
    }

    public ArrayList<String> getNamesProducts(){
        return null;
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
