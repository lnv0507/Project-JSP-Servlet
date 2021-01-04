package com.dao;

import com.dtos.ProductDTO;
import com.utils.DBUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;

public class ProductDAO {
    public void upload(ProductDTO productDTO) throws SQLException {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet resut = null;
        FileInputStream fis = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "insert into product(IDPRODUCT, TENPRODUCT, LOAI, CHATLIEU, GIATIEN, SOLUONGTRONGKHO, DANHGIA, tinhtrang, image)\n" +
                        "value(?,?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setString(1, productDTO.getIdProduct());
                pst.setString(2, productDTO.getTenProduct());
                pst.setString(3, productDTO.getLoai());
                pst.setString(4, productDTO.getChatLieu());
                pst.setInt(5, productDTO.getGiaTien());
                pst.setInt(6, productDTO.getSoLuongTrongKho());
                pst.setString(7, productDTO.getDanhGia());
                pst.setString(8, productDTO.getTinhTrang());
//                pst.setString(9, productDTO.getImage());

                // Sửa lại thành upload nhiều hình


                pst.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }

    public void uploadImage() {
        //Upload image vao database
    }

    public void upload2(String name, String nam2, InputStream fis) throws SQLException {
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet resut = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "insert into product(IDPRODUCT, TENPRODUCT, LOAI, CHATLIEU, GIATIEN, SOLUONGTRONGKHO, DANHGIA, tinhtrang, image)\n" +
                        "value(?,?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setString(1, name);
                pst.setString(2, nam2);
                pst.setString(3, "");
                pst.setString(4, "");
                pst.setInt(5, 1);
                pst.setInt(6, 2);
                pst.setString(7, "");
                pst.setString(8, "");
                pst.setBlob(9, fis);
                pst.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }

    public ArrayList<ProductDTO> getList() {
        ResultSet rsProducts = null;
        ResultSet rsImages = null;
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        try {
//            rsProducts = DBUtils.connect().executeQuery(sql);
            String sql = "Select * from product";
            rsProducts = DBUtils.makeConnection().createStatement().executeQuery(sql);
            rsProducts.beforeFirst();
            while (rsProducts.next()) {
                ProductDTO pd = new ProductDTO();
                pd.setIdProduct(rsProducts.getString(1));
                pd.setTenProduct(rsProducts.getString(2));
                pd.setLoai(rsProducts.getString(3));
                pd.setChatLieu(rsProducts.getString(4));
                pd.setGiaTien(rsProducts.getInt(5));
                pd.setSoLuongTrongKho(rsProducts.getInt(6));
                pd.setDanhGia(rsProducts.getString(7));
                String sqlImage = "Select * from hinhanh where id = '" + rsProducts.getString(1) + "'";
                rsImages = DBUtils.makeConnection().createStatement().executeQuery(sqlImage);
                while (rsImages.next()) {
                    pd.addImage(rsImages.getString(2));
                }
                lsProducts.add(pd);
            }
            Collection<ProductDTO> values = lsProducts;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lsProducts;
    }

    public ArrayList<ProductDTO> getListByPage(int index, int size) {
        ResultSet rsProducts = null;
        ResultSet rsImages = null;
        String sql = "with x as (select ROW_NUMBER() over (order by IDPRODUCT asc ) as r,product.*" +
                "from product)" +
                "select * from x where r between ?*?-?+1 and ?*?";
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        try {
//            rsProducts = DBUtils.connect().executeQuery(sql);
            Connection con = DBUtils.makeConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, index);
            ps.setInt(2, size);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            rsProducts = ps.executeQuery();
            rsProducts.beforeFirst();
            while (rsProducts.next()) {
                ProductDTO pd = new ProductDTO();
                pd.setIdProduct(rsProducts.getString(2));
                pd.setTenProduct(rsProducts.getString(3));
                pd.setLoai(rsProducts.getString(4));
                pd.setChatLieu(rsProducts.getString(5));
                pd.setGiaTien(rsProducts.getInt(6));
                pd.setSoLuongTrongKho(rsProducts.getInt(7));
                pd.setDanhGia(rsProducts.getString(8));
                String sqlImage = "Select * from hinhanh where id = '" + rsProducts.getString(2) + "'";
                rsImages = DBUtils.makeConnection().createStatement().executeQuery(sqlImage);
                while (rsImages.next()) {
                    pd.addImage(rsImages.getString(2));
                }
                lsProducts.add(pd);
            }
            Collection<ProductDTO> values = lsProducts;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return lsProducts;
    }

    public static void main(String[] args) {
        ProductDAO productDAO = new ProductDAO();
//        System.out.println(productDAO.getListByPage(1,10));
    }
}
