package com.dao;

import com.dtos.AccountDTO;
import com.dtos.ProductDTO;
import com.utils.DBUtils;

import java.rmi.Remote;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SearchDAO {

    public ArrayList<AccountDTO> searchAccount(String txt,int index,int size){
        ArrayList<AccountDTO> listAccount = new ArrayList<>();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try{
            con = DBUtils.makeConnection();
            String sql =  "with x as (select ROW_NUMBER() over (order by idaccount asc ) as r,account.*" +
                    "from account where idaccount like ?)" +
                    "select * from x where r between ?*?-?+1 and ?*?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1,"%"+txt+"%");
            preparedStatement.setInt(2,index);
            preparedStatement.setInt(3,size);
            preparedStatement.setInt(4,size);
            preparedStatement.setInt(5,index);
            preparedStatement.setInt(6,size);
            rs = preparedStatement.executeQuery();
            rs.beforeFirst();
            while(rs.next()){
                AccountDTO accountDTO = new AccountDTO();
                accountDTO.setIdAccount(rs.getString(2));
                accountDTO.setTenAccount(rs.getString(3));
                accountDTO.setSoDienThoai(rs.getString(4));
                accountDTO.setDiaChi(rs.getString(5));
                accountDTO.setEmail(rs.getString(6));
                accountDTO.setChucVu(rs.getString(7));
                accountDTO.setPassWord(rs.getString(8));
                listAccount.add(accountDTO);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return listAccount;
    }

    public ArrayList<ProductDTO> searchProduct(String txt,int index, int size){
        ArrayList<ProductDTO> listProduct = new ArrayList<ProductDTO>();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        ProductDAO productDAO = new ProductDAO();
        try{
            con = DBUtils.makeConnection();
            String sql =  "with x as (select ROW_NUMBER() over (order by IDPRODUCT asc ) as r,product.*" +
                    "from product where tenproduct like ?)" +
                    "select * from x where r between ?*?-?+1 and ?*?";
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1,"%"+txt+"%");
            preparedStatement.setInt(2,index);
            preparedStatement.setInt(3,size);
            preparedStatement.setInt(4,size);
            preparedStatement.setInt(5,index);
            preparedStatement.setInt(6,size);
            rs = preparedStatement.executeQuery();
            rs.beforeFirst();
            while(rs.next()){
                ProductDTO productDTO = new ProductDTO();
                productDTO.setIdProduct(rs.getString(2));
                productDTO.setTenProduct(rs.getString(3));
                productDTO.setLoai(rs.getString(4));
                productDTO.setChatLieu(rs.getString(5));
                productDTO.setGiaTien(rs.getInt(6));
                productDTO.setSoLuongTrongKho(rs.getInt(7));
                productDTO.setDanhGia(rs.getInt(8));
                productDTO.setTinhTrang(rs.getString(9));
                productDAO.getImagesByProduct(productDTO);
                listProduct.add(productDTO);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return listProduct;
    }
    public ArrayList<String> getAllDirectory(){
        ArrayList<String> listDirectory = new ArrayList<String>();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        ProductDAO productDAO = new ProductDAO();
        try{
            con = DBUtils.makeConnection();
            String sql =  "SELECT DISTINCT loai FROM product;";
            preparedStatement = con.prepareStatement(sql);
            rs = preparedStatement.executeQuery();
            rs.beforeFirst();
            while(rs.next()){
                listDirectory.add(rs.getString(1));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return listDirectory;
    }



    public static void main(String[] args) {
        SearchDAO s = new SearchDAO();

        System.out.println( s.searchAccount("mod",1,16));
    }
}
