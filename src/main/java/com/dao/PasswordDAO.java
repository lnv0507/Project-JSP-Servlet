package com.dao;

import com.dtos.AccountDTO;
import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//Lấy mk từ database
public class PasswordDAO {
    public static AccountDTO FindUserPassword(String email) {

        Connection con;
        AccountDTO accountDTO = null;
        try {
            con = DBUtils.makeConnection();
            PreparedStatement stmt = con.prepareStatement("Select password from account where email=?");
            stmt.setString(1,email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                accountDTO = new AccountDTO();

                accountDTO.setPassWord(rs.getString("password"));
            }
        } catch (Exception e) {

            e.printStackTrace();
        }
        return accountDTO;

    }
}
