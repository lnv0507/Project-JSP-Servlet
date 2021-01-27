package com.dao;

import com.dtos.DetailDesignDTO;
import com.dtos.DirectoryTypeDTO;
import com.dtos.ProductDTO;
import com.dtos.DesignDTO;
import com.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DesignDAO {

    public void setProductsDes(DesignDTO des) {
        ResultSet rsDes = null;
        PreparedStatement ps = null;
        Connection con;
        String sql = "select * from chitietthietke where mathietke like ?";
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, des.getIdDes());
            rsDes = ps.executeQuery();
            rsDes.beforeFirst();
            while (rsDes.next()) {
                des.addProduct(rsDes.getString(2), rsDes.getInt(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setImagesDes(DesignDTO des) {
        ResultSet rsDes = null;
        PreparedStatement ps = null;
        Connection con;
        String sql = "select * from hinhanh where id like ?";
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, des.getIdDes());
            rsDes = ps.executeQuery();
            rsDes.beforeFirst();
            while (rsDes.next()) {
                des.addImagesDes(rsDes.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<DesignDTO> getDesigns(int index, int size) {
        ArrayList<DesignDTO> listDes = new ArrayList<>();
        ResultSet rsDes = null;
        PreparedStatement ps = null;
        Connection con;
        String sql = "with x as (select ROW_NUMBER() over (order by MATHIETKE asc ) as r,thietke.*" +
                "from thietke)" +
                "select * from x where r between ?*?-?+1 and ?*?";
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, index);
            ps.setInt(2, size);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            rsDes = ps.executeQuery();
            rsDes.beforeFirst();
            while (rsDes.next()) {
                DesignDTO designDTO = new DesignDTO();
                designDTO.setIdDes(rsDes.getString(2));
                designDTO.setNameDes(rsDes.getString(3));
                designDTO.setType(rsDes.getString(4));
                designDTO.setMota(rsDes.getString(5));
                setImagesDes(designDTO);
                setProductsDes(designDTO);
                listDes.add(designDTO);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listDes;
    }

    public DesignDTO getDesById(String id) {
        ResultSet rs = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        DesignDTO designDTO = new DesignDTO();
        String sql = "select * from thietke where mathietke like ?";
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            rs.beforeFirst();
            while (rs.next()) {
                designDTO.setIdDes(rs.getString(1));
                designDTO.setNameDes(rs.getString(2));
                designDTO.setType(rs.getString(3));
                designDTO.setMota(rs.getString(4));
                setImagesDes(designDTO);
                setProductsDes(designDTO);
            }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return designDTO;
    }

    public String getTypeById(String id) {
        ResultSet rs = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        String result = "";
        String sql = "SELECT * FROM DANHMUCTHIETKE WHERE ID LIKE ?";
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            rs.beforeFirst();
            while (rs.next()) {
                result = rs.getString(2);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }

    public ArrayList<DirectoryTypeDTO> getDirectories() {
        ArrayList<DirectoryTypeDTO> listDirectories = new ArrayList<>();
        ResultSet rs = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        String sql = "SELECT DISTINCT * FROM DANHMUCTHIETKE";
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            rs.beforeFirst();
            while (rs.next()) {
                DirectoryTypeDTO type = new DirectoryTypeDTO();
                type.setId(rs.getString(1));
                type.setType(rs.getString(2));
                listDirectories.add(type);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listDirectories;
    }

    public ArrayList<DetailDesignDTO> findById(String id) {
        ArrayList<DetailDesignDTO> list = new ArrayList<>();
        String sql = "Select * from chitietthietke where MATHIETKE =?";
        ResultSet rs = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        ProductDAO productDAO = new ProductDAO();
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                DetailDesignDTO ddd = new DetailDesignDTO();
                ProductDTO productDTO = new ProductDTO();
                productDTO = productDAO.getProductById(rs.getString(2));
                int num = rs.getInt(3);
                ddd.setProductDTO(productDTO);
                ddd.setNum(num);
                list.add(ddd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public ArrayList<DesignDTO> getThietKe() {
        ArrayList<DesignDTO> list = new ArrayList<>();
        String sql = "Select * from thietke";
        ResultSet rs = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        ProductDAO productDAO = new ProductDAO();
        try {
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                DesignDTO ddd = new DesignDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(ddd);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        DesignDAO designDAO = new DesignDAO();
        System.out.println(designDAO.getDesigns(1, 16).get(1).getImagesDes().get(0));
    }
}
