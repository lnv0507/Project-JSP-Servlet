package com.dao;

import com.dtos.ProductDTO;
import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CardDAO {
    public static Connection con = DBUtils.makeConnection();

    public static ProductDTO  getBookID(String id) {
        PreparedStatement ps = null;
        ResultSet rs = null;
        ProductDTO pro = null;
        try {
            ps = con.prepareStatement("SELECT  * from product where idproduct = ?");
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                pro = new ProductDTO();
                pro.setIdProduct(rs.getString(1));
                pro.setTenProduct(rs.getString(2));
                pro.setLoai(rs.getString(3));
                pro.setChatLieu(rs.getString(4));
                pro.setGiaTien(Integer.parseInt(rs.getString(5)));
                pro.setSoLuongTrongKho(Integer.parseInt(rs.getString(6)));
                pro.setDanhGia(Integer.parseInt(rs.getString(7)));
                pro.setTinhTrang(rs.getString(8));
                pro.setAmount(1);
                getImagesByProduct(pro);
            }
            return pro;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static void getImagesByProduct(ProductDTO productDTO) {
        Connection con;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String sql = "Select * from hinhanh where id = ?";
        try {
            con = DBUtils.makeConnection();
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, productDTO.getIdProduct());
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                productDTO.addImage(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

}
