package com.dao;

import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class VanChuyenDAO {
    public static boolean insertVanChuyen( String maHoaDon,String name, String email, String soDienThoai, String addRess, String donvivanchuyen,int tongtien){
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if(con!=null){
                pre = con.prepareStatement("Insert into vanchuyen(mahoadon,tenkhachhang,email, sodienthoai, address, donvivanchuyen, tongtien) values(?,?,?,?,?,?,?,?)");
                pre.setString(1, maHoaDon);
                pre.setString(2, name);
                pre.setString(3, email);
                pre.setString(4, soDienThoai);
                pre.setString(5, addRess);
                pre.setString(6, donvivanchuyen);
                pre.setInt(7,tongtien);
                if (pre. executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT *from vanchuyen");
                    pre.executeQuery();
                    return true;
                }

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public static List<String> getHoaDon(){
        List<String> arr = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            pre = con.prepareStatement("SELECT  * from vanchuyen");
            rs = pre.executeQuery();
            while (rs.next()){
                String maHoaDon = rs.getString("mahoadon");
                arr.add(maHoaDon);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return arr;
    }

    public static void main(String[] args) {
        System.out.println(getHoaDon());
//        System.out.println(insertVanChuyen("helu","helu","helu","helu","helu","helu"));
    }
}
