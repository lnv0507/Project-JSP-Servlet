package com.dao;

import com.dtos.AccountDTO;
import com.dtos.ProductDTO;
import com.utils.DBUtils;

import java.security.MessageDigest;
import java.sql.*;
import java.util.ArrayList;

public class AccountDAO {
    public AccountDTO checkLogin(String userId, String passWord) throws SQLException {
        AccountDTO acDTO = null;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "select *\n" + "from account \n" + "where IDACCOUNT=? AND PASSWORD=?";
                pst = cn.prepareStatement(sql);
                pst.setString(1, userId);
                pst.setString(2, md5(passWord));
                rs = pst.executeQuery();
                if (rs.next()) {
                    String fullName = rs.getString("TENACCOUNT");
                    String soDienThoai = rs.getString("SODIENTHOAI");
                    String diaChi = rs.getString("DIACHI");
                    String email = rs.getString("EMAIL");
                    String chucVu = rs.getString("CHUCVU");
                    acDTO = new AccountDTO(userId, fullName, soDienThoai, diaChi, email, chucVu, passWord);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }

        }
        return acDTO;
    }

    public void signUp(AccountDTO account) throws SQLException {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            cn = DBUtils.makeConnection();
            if (cn != null) {
                String sql = "insert into Account(IDACCOUNT, TENACCOUNT, SODIENTHOAI, DIACHI, EMAIL, CHUCVU, PASSWORD)\n"
                        + "VALUES(?,?,?,?,?,?,?)";
                pst = cn.prepareStatement(sql);
                pst.setString(1, account.getIdAccount());
                pst.setString(2, account.getTenAccount());
                pst.setString(3, account.getSoDienThoai());
                pst.setString(4, account.getDiaChi());
                pst.setString(5, account.getEmail());
                pst.setString(6, account.getChucVu());
                pst.setString(7, md5(account.getPassWord()));
                pst.executeUpdate();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) {
                pst.close();
            }

        }
    }

    public ArrayList<AccountDTO> getAccount() {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<AccountDTO> listAc = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            pst = cn.prepareStatement("SELECT  * FROM  Account");
            rs = pst.executeQuery();
            while (rs.next()) {
                AccountDTO ad = new AccountDTO();
                ad.setIdAccount(rs.getString(1));
                ad.setTenAccount(rs.getString(2));
                ad.setSoDienThoai(rs.getString(3));
                ad.setDiaChi(rs.getString(4));
                ad.setEmail(rs.getString(5));
                ad.setChucVu(rs.getString(6));
                ad.setPassWord(md5(rs.getString(7)));
                listAc.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }

        return listAc;
    }

    public ArrayList<AccountDTO> listAdmin() {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        ArrayList<AccountDTO> listAc = new ArrayList<>();
        try {
            cn = DBUtils.makeConnection();
            pst = cn.prepareStatement("SELECT  * FROM  Account where CHUCVU = 'ADMIN'");
            rs = pst.executeQuery();
            while (rs.next()) {
                AccountDTO ad = new AccountDTO();
                ad.setIdAccount(rs.getString(1));
                ad.setTenAccount(rs.getString(2));
                ad.setSoDienThoai(rs.getString(3));
                ad.setDiaChi(rs.getString(4));
                ad.setEmail(rs.getString(5));
                ad.setChucVu(rs.getString(6));
                ad.setPassWord(md5(rs.getString(7)));
                listAc.add(ad);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }

        return listAc;
    }

    public boolean deleteAccount(String id) {
        Connection cn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            cn = DBUtils.makeConnection();
            ps = cn.prepareStatement("DELETE from account where idaccount = ?");
            ps.setString(1, id);
            if (ps.executeUpdate() > 0) {
                ps = cn.prepareStatement("SELECT  * from account");
                ps.executeQuery();
                return true;
            }

        } catch (Exception e) {

        }
        return false;
    }

    //    Mã Hóa Mật Khẩu
    public static String md5(String msg) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(msg.getBytes());
            byte byteData[] = md.digest();
            //convert the byte to hex format method 1
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            return sb.toString();
        } catch (Exception ex) {
            return "";
        }
    }

}
