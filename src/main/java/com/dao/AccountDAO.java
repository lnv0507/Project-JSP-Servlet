package com.dao;

import com.dtos.AccountDTO;
import com.dtos.ProductDTO;
import com.mapper.AccountMapper;
import com.utils.DBUtils;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.MessageDigest;
import java.sql.*;
import java.util.ArrayList;
import java.util.Properties;
import java.util.Random;

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
                return acDTO;
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

        } return null;

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

    public static String ramdomPassword() {
        String pass = "";
        Random rd = new Random();
        for (int i = 0; i < 5; i++) {
            int number = rd.nextInt(9);
            pass += number;
        }
        return pass;
    }

        public static boolean sendPassword(String email1) {
            String pass=ramdomPassword();
            Connection cn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        try    {
            cn = DBUtils.makeConnection();
            ps = cn.prepareStatement("update account set PASSWORD = ? where  EMAIL=?");
            ps.setString(1, pass);
            ps.setString(2,email1);

            if(ps.executeUpdate()>0 ){
                ps = cn.prepareStatement("SELECT * from account");
                ps.executeQuery();
                sendMail(email1,"PassNe",pass);
                return true;
            }
        }
        catch (Exception e) {

            e.printStackTrace();
        }
        return false;
    }
    // gửi mail
    public static boolean sendMail(String to, String subject, String text) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("qui24112000@gmail.com", "dinhthihang0354116356");
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setHeader("Content-Type", "text/plain; charset=UTF-8");
            message.setFrom(new InternetAddress("dangthien0973@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(text);
            Transport.send(message);
            return true;

        } catch (MessagingException e) {
            return false;
        }
//        return true;
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

    //    doimatkhau
    public static boolean doiMatKhau(String matKhau, String id) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            pre = con.prepareStatement("UPDATE account set password = ? where id = ?");
            if(pre.executeUpdate() >0) {
                pre = con.prepareStatement("SELECT  * from account");
                pre.executeQuery();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public AccountDTO findByUserName(String idaccount) {
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "SELECT  * FROM account where IDACCOUNT=?";
        try {
            cn = DBUtils.makeConnection();
            pst = cn.prepareStatement(sql);
            pst.setString(1, idaccount);
            rs = pst.executeQuery();

            return new AccountMapper().mapRow(rs);
        } catch (Exception throwables) {
            return null;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }
    public AccountDTO findByEmail(String email) {
        AccountDTO accountDTO;
        Connection cn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String sql = "SELECT  * FROM account where email=?";
        try {
            cn = DBUtils.makeConnection();
            pst = cn.prepareStatement(sql);
            pst.setString(1, email);
            rs = pst.executeQuery();
            accountDTO=new AccountMapper().mapRow(rs);
            return accountDTO;
        } catch (Exception throwables) {
            return null;
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
    public String checkRes(AccountDTO accountDTO){
        if(findByUserName(accountDTO.getIdAccount()).getIdAccount()!=null){
            return "user_is_exist";
        }
        if(findByEmail(accountDTO.getEmail()).getEmail()!=null){
            return "email_is_exist";
        }
        return "1";
    }

}
