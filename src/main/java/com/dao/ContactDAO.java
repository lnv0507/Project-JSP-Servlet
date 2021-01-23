package com.dao;

import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ContactDAO {
    public static boolean insertContactintoDatabase( String maLienhe,String tenAccount,String email,String soDienThoai,String mucCanLienHe,String noiDung) {
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ps = conn.prepareStatement("insert into lienhe(MALIENHE,TENACCOUNT,EMAIL,SODIENTHOAI,MUCCANLIENHE,NOIDUNGLIENHE,TRANGTHAI values(?,?,?,?,?,?,?)");
                ps.setString(1, maLienhe);
                ps.setString(2, tenAccount);
                ps.setString(3, email);
                ps.setString(4, soDienThoai);
                ps.setString(5, mucCanLienHe);
                ps.setString(6, noiDung);
                ps.setString(7, "chua kiem tra");
                if (ps.executeUpdate() > 0) {
                    ps=conn.prepareStatement("select*from lienhe");
                    ps.executeQuery();
                    return true;

                }
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public static List<String> getLienHe(){
        List<String> arr=new ArrayList<>();
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            conn=DBUtils.makeConnection();
            ps=conn.prepareStatement("select * from lienhe");
            rs=ps.executeQuery();
            while(rs.next()){
                String maLienHe=rs.getString("malienhe");
                arr.add(maLienHe);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return arr;
    }
}
