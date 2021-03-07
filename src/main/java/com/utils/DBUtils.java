package com.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBUtils {
    public static Connection makeConnection(){
        Connection cn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost/";
            String nameDTB = "projectweb";
            String userName = "root";
            String pass = "";
            cn = DriverManager.getConnection(url + nameDTB, userName, pass);
        }catch (Exception e){
            Logger.getLogger(DBUtils.class.getName()).log(Level.SEVERE, null, e);
        }
        return cn;
    }
}
