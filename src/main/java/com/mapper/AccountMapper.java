package com.mapper;

import com.dtos.AccountDTO;

import java.sql.ResultSet;
import java.sql.SQLException;

import static com.dao.AccountDAO.md5;

public class AccountMapper implements  RowMapper<AccountDTO> {

   public AccountDTO mapRow(ResultSet rs){
       AccountDTO ad = new AccountDTO();
       try {
           while(rs.next()) {
               ad.setIdAccount(rs.getString(1));
               ad.setTenAccount(rs.getString(2));
               ad.setSoDienThoai(rs.getString(3));
               ad.setDiaChi(rs.getString(4));
               ad.setEmail(rs.getString(5));
               ad.setChucVu(rs.getString(6));
               ad.setPassWord(md5(rs.getString(7)));
           }
           return ad;
       } catch (SQLException throwables) {
           return null;
       }
    }




}
