package com.dao;

import com.dtos.ContactDTO;
import com.dtos.DonViVanChuyenDTO;
import com.dtos.VanChuyenDTO;
import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class VanChuyenDAO {
    public static List<String> getDonHang() {
        List<String> arr = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            pre = con.prepareStatement("SELECT  * from hoadon");
            rs = pre.executeQuery();
            while (rs.next()) {
                String maHoaDon = rs.getString("madonhang");
                arr.add(maHoaDon);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return arr;


    }

    public boolean insertVanChuyen(String maHoaDon, String name, String email, String soDienThoai, String addRess, String donvivanchuyen, int tongtien, Timestamp ngayGiao, String trangthai) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("Insert into vanchuyen(mahoadon,tenkhachhang,email, sodienthoai, address, donvivanchuyen, tongtien, ngaygiao, trangthai) values(?,?,?,?,?,?,?,?,?)");
                pre.setString(1, maHoaDon);
                pre.setString(2, name);
                pre.setString(3, email);
                pre.setString(4, soDienThoai);
                pre.setString(5, addRess);
                pre.setString(6, donvivanchuyen);
                pre.setInt(7, tongtien);
                pre.setTimestamp(8, ngayGiao);
                pre.setString(9, trangthai);
                if (pre.executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT *from vanchuyen");
                    pre.executeQuery();
                    return true;
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static List<String> getHoaDon() {
        List<String> arr = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            pre = con.prepareStatement("SELECT  * from vanchuyen");
            rs = pre.executeQuery();
            while (rs.next()) {
                String maHoaDon = rs.getString("mahoadon");
                arr.add(maHoaDon);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return arr;
    }

    public ArrayList<DonViVanChuyenDTO> getLayDSVanChuyen() {
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        ArrayList<DonViVanChuyenDTO> listVanChuyen = new ArrayList<>();
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("SELECT *from donvivanchuyen");
                rs = pre.executeQuery();
                while (rs.next()) {
                    DonViVanChuyenDTO vanChuyen = new DonViVanChuyenDTO();
                    vanChuyen.setMaDonViVanChuyen(rs.getString(1));
                    vanChuyen.setTenDonViVanChuyen(rs.getString(2));
                    listVanChuyen.add(vanChuyen);
                }
                return listVanChuyen;
            }

        } catch (
                Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean insertDonHang(String maDonHang, String idAccount, int tongThanhTien) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("Insert into donhang(maDonHang, idAccount,tongThanhTien) values(?,?,?)");
                pre.setString(1, maDonHang);
                pre.setString(2, idAccount);
                pre.setInt(3, tongThanhTien);
                if (pre.executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT *from donhang");
                    pre.executeQuery();
                    return true;
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insertHoaDon(String maHoaDon, String maDonViVanChuyen, String maDonHang, int thanhTien, String idAccount) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("Insert into hoadon(maHoaDon, maDonViVanChuyen,maDonHang,thanhTien,idAccount) values(?,?,?,?,?)");
                pre.setString(1, maHoaDon);
                pre.setString(2, maDonViVanChuyen);
                pre.setString(3, maDonHang);
                pre.setInt(4, thanhTien);
                pre.setString(5, idAccount);
                if (pre.executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT *from hoadon");
                    pre.executeQuery();
                    return true;
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insertChiTiet(String maDonHang, String idProDuct, int soLuong) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("Insert into chitietdonhang(maDonHang, idProDuct,soLuong) values(?,?,?)");
                pre.setString(1, maDonHang);
                pre.setString(2, idProDuct);
                pre.setInt(3, soLuong);
                if (pre.executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT *from chitietdonhang");
                    pre.executeQuery();
                    return true;
                }

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<VanChuyenDTO> getList() {
        List<VanChuyenDTO> arr = new ArrayList<>();
        Connection con = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            con = DBUtils.makeConnection();
            pre = con.prepareStatement("SELECT  * from vanchuyen");
            rs = pre.executeQuery();
            while (rs.next()) {
                VanChuyenDTO vc = new VanChuyenDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(5), rs.getString(6), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getString(9));
                arr.add(vc);
            }
            return arr;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updateDonHang(String id) {
        Connection con = null;
        PreparedStatement pre = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                pre = con.prepareStatement("UPDATE vanchuyen SET TRANGTHAI = 'Đã Xử Lý' where MAHOADON = ?");
                pre.setString(1, id);
                if (pre.executeUpdate() > 0) {
                    pre = con.prepareStatement("SELECT  * from vanchuyen");
                    pre.executeQuery();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<VanChuyenDTO> getTrangThai() {
        Connection conn = null;
        PreparedStatement ps = null;
        ArrayList<VanChuyenDTO> giaiQuyet = new ArrayList<>();
        VanChuyenDTO vc = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.makeConnection();
            if (conn != null) {
                ps = conn.prepareStatement("SELECT * from vanchuyen where trangthai = 'Đã Xử Lý'");
                rs = ps.executeQuery();
                while (rs.next()) {
                    vc = new VanChuyenDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(5), rs.getString(6), rs.getString(6), rs.getInt(7), rs.getTimestamp(8), rs.getString(9));
                    giaiQuyet.add(vc);
                }
                return giaiQuyet;
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
