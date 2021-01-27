package com.dao;

import com.dtos.ContactDTO;
import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class ContactDAO {
    public static boolean insertContactintoDatabase(String maLienhe, String email, String soDienThoai, String noiDung, String namepro, String trangThai) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ps = conn.prepareStatement("insert into lienhe(MALIENHE,EMAIL,SODIENTHOAI,NOIDUNGLIENHE,name, trangThai) values(?,?,?,?,?,?)");
                ps.setString(1, maLienhe);
                ps.setString(2, email);
                ps.setString(3, soDienThoai);
                ps.setString(4, noiDung);
                ps.setString(5, namepro);
                ps.setString(6, trangThai);
                if (ps.executeUpdate() > 0) {
                    ps = conn.prepareStatement("select*from lienhe");
                    ps.executeQuery();
                    return true;

                }
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    public static List<String> getLienHe() {
        List<String> arr = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.makeConnection();
            ps = conn.prepareStatement("select * from lienhe");
            rs = ps.executeQuery();
            while (rs.next()) {
                String maLienHe = rs.getString("malienhe");
                arr.add(maLienHe);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return arr;
    }

    public ArrayList<ContactDTO> getSelectContact() {
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        ArrayList<ContactDTO> list = new ArrayList<>();
        ContactDTO contactDTO = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("SELECT *FROM LIENHE  where  TRANGTHAI = 'Chưa Xử Lý'");
                rs = pre.executeQuery();
                while (rs.next()) {
                    contactDTO = new ContactDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                    list.add(contactDTO);
                }
                return list;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    public ArrayList<ContactDTO> getTrangThai() {
        Connection conn = null;
        PreparedStatement ps = null;
        ArrayList<ContactDTO> giaiQuyet = new ArrayList<>();
        ContactDTO contactDTO = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ps = conn.prepareStatement("SELECT * from lienhe where trangthai = 'Đã Xử Lý'");
                rs = ps.executeQuery();
                while (rs.next()) {
                    contactDTO = new ContactDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                    giaiQuyet.add(contactDTO);
                }
                return giaiQuyet;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public boolean updateLienHe(String id){
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if(con!=null){
                pre = con.prepareStatement("UPDATE lienhe SET TRANGTHAI = 'Đã Xử Lý' where MALIENHE = ?");
                pre.setString(1,id);
                if(pre.executeUpdate()>0){
                    pre = con.prepareStatement("SELECT  * from lienhe");
                    pre.executeQuery();
                    return true;
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}