package com.dao;

import com.utils.DBUtils;

import java.rmi.Remote;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SearchDAO {

    public void searchProduct(String txt){
        Connection con = null;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        try{
            con = DBUtils.makeConnection();
//            String sql = "Select * from sanpham where "
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
