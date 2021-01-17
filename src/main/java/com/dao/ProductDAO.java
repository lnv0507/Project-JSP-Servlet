package com.dao;

import com.dtos.ProductDTO;
import com.utils.DBUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.URL;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

public class ProductDAO {
    public void upload(ProductDTO productDTO) throws SQLException {
        Connection con;
        PreparedStatement pst = null;
        ResultSet resut = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "insert into product(IDPRODUCT, TENPRODUCT, LOAI, CHATLIEU, GIATIEN, SOLUONGTRONGKHO, DANHGIA, TINHTRANG)\n" +
                        "value(?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setString(1, productDTO.getIdProduct());
                pst.setString(2, productDTO.getTenProduct());
                pst.setString(3, productDTO.getLoai());
                pst.setString(4, productDTO.getChatLieu());
                pst.setInt(5, productDTO.getGiaTien());
                pst.setInt(6, productDTO.getSoLuongTrongKho());
                pst.setInt(7, productDTO.getDanhGia());
                pst.setString(8, productDTO.getTinhTrang());
                if (pst.executeUpdate() > 0) {
                    pst = con.prepareStatement("select * from product");
                    pst.executeQuery();

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pst != null) {
                pst.close();
            }

        }
    }

    public boolean uploadImage(String id, String image) {
        //Upload image vao database
        Connection con;
        PreparedStatement pst = null;
        try {
            con = DBUtils.makeConnection();
            pst = con.prepareStatement("Insert into hinhanh(ID,URL) VALUES (?,?)");
            pst.setString(1, id);
            pst.setString(2, image);
            if (pst.executeUpdate() > 0) {
                pst = con.prepareStatement("Select*from hinhanh");
                pst.executeQuery();
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pst != null) pst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public void upload2(String name, String nam2, InputStream fis) throws SQLException {
        Connection con;
        PreparedStatement pst = null;
        ResultSet resut = null;
        try {
            con = DBUtils.makeConnection();
            if (con != null) {
                String sql = "insert into product(IDPRODUCT, TENPRODUCT, LOAI, CHATLIEU, GIATIEN, SOLUONGTRONGKHO, DANHGIA, tinhtrang, image)\n" +
                        "value(?,?,?,?,?,?,?,?,?)";
                pst = con.prepareStatement(sql);
                pst.setString(1, name);
                pst.setString(2, nam2);
                pst.setString(3, "");
                pst.setString(4, "");
                pst.setInt(5, 1);
                pst.setInt(6, 2);
                pst.setString(7, "");
                pst.setString(8, "");
                pst.setBlob(9, fis);
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

    public ArrayList<ProductDTO> getList() {
        Connection con;
        ResultSet rsProducts = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        try {
            con = DBUtils.makeConnection();
//            rsProducts = DBUtils.connect().executeQuery(sql);
            String sql = "Select * from product";
            ps = con.prepareStatement(sql);
            rsProducts = ps.executeQuery();
            rsProducts.beforeFirst();
            while (rsProducts.next()) {
                ProductDTO pd = new ProductDTO();
                pd.setIdProduct(rsProducts.getString(1));
                pd.setTenProduct(rsProducts.getString(2));
                pd.setLoai(rsProducts.getString(3));
                pd.setChatLieu(rsProducts.getString(4));
                pd.setGiaTien(rsProducts.getInt(5));
                pd.setSoLuongTrongKho(rsProducts.getInt(6));
                pd.setDanhGia(rsProducts.getInt(7));
                pd.setTinhTrang(rsProducts.getString(8));
                getImagesByProduct(pd);
                lsProducts.add(pd);
            }
            Collection<ProductDTO> values = lsProducts;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                if (rsProducts != null) rsProducts.close();
                if (rsImages != null) rsImages.close();
                if (ps != null) ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lsProducts;
    }

    public ArrayList<ProductDTO> getListByPage(int index, int size) {
        ResultSet rsProducts = null;
        ResultSet rsImages = null;
        PreparedStatement ps = null;
        Connection con;
        String sql = "with x as (select ROW_NUMBER() over (order by IDPRODUCT asc ) as r,product.*" +
                "from product)" +
                "select * from x where r between ?*?-?+1 and ?*?";
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        try {
//            rsProducts = DBUtils.connect().executeQuery(sql);
            con = DBUtils.makeConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, index);
            ps.setInt(2, size);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            rsProducts = ps.executeQuery();
            rsProducts.beforeFirst();
            while (rsProducts.next()) {
                ProductDTO pd = new ProductDTO();
                pd.setIdProduct(rsProducts.getString(2));
                pd.setTenProduct(rsProducts.getString(3));
                pd.setLoai(rsProducts.getString(4));
                pd.setChatLieu(rsProducts.getString(5));
                pd.setGiaTien(rsProducts.getInt(6));
                pd.setSoLuongTrongKho(rsProducts.getInt(7));
                pd.setDanhGia(rsProducts.getInt(8));
                pd.setTinhTrang(rsProducts.getString(9));
                getImagesByProduct(pd);
                lsProducts.add(pd);
            }
            Collection<ProductDTO> values = lsProducts;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                if (rsProducts != null) rsProducts.close();
                if (rsImages != null) rsImages.close();
                if (ps != null) ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return lsProducts;
    }

    public ProductDTO getProductById(String id) throws SQLException {
        ProductDTO product = new ProductDTO();
        ResultSet rsProduct = null;
        ResultSet rsImages = null;
        Connection con = DBUtils.makeConnection();
        String sql = "select * from product where IDPRODUCT like ?";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, id);
        rsProduct = ps.executeQuery();
        rsProduct.beforeFirst();
        while (rsProduct.next()) {
            product.setIdProduct(rsProduct.getString(1));
            product.setTenProduct(rsProduct.getString(2));
            product.setLoai(rsProduct.getString(3));
            product.setChatLieu(rsProduct.getString(4));
            product.setGiaTien(rsProduct.getInt(5));
            product.setSoLuongTrongKho(rsProduct.getInt(6));
            product.setDanhGia(rsProduct.getInt(7));
            product.setTinhTrang(rsProduct.getString(8));
            getImagesByProduct(product);

        }
        return product;
    }

    public ProductDTO getTop1() {
        ProductDTO product = new ProductDTO();
        ResultSet rsProduct = null;
        ResultSet rsImage = null;
        PreparedStatement pst = null;
        ArrayList<ProductDTO> lsProducts = new ArrayList<>();
        String sql = "select * from product order by IDPRODUCT desc limit 5";
        try {
            Connection con = DBUtils.makeConnection();
            pst = con.prepareStatement(sql);
            rsProduct = pst.executeQuery();
            while (rsProduct.next()) {

                ProductDTO productx = new ProductDTO();
                productx.setIdProduct(rsProduct.getString(1));
                productx.setTenProduct(rsProduct.getString(2));
                productx.setLoai(rsProduct.getString(3));
                productx.setChatLieu(rsProduct.getString(4));
                productx.setGiaTien(rsProduct.getInt(5));
                productx.setSoLuongTrongKho(rsProduct.getInt(6));
                productx.setDanhGia(rsProduct.getInt(7));
                productx.setTinhTrang(rsProduct.getString(8));

                getImagesByProduct(productx);
                lsProducts.add(productx);
                return productx;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rsProduct != null) rsProduct.close();
                if (rsImage != null) rsImage.close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public List<ProductDTO> getTop5() {
        ProductDTO product = new ProductDTO();
        ResultSet rsProduct = null;
        ResultSet rsImage = null;
        PreparedStatement pst = null;
        String sql = "select * from product order by IDPRODUCT desc limit 5";
        try {
            Connection con = DBUtils.makeConnection();
            pst = con.prepareStatement(sql);
            rsProduct = pst.executeQuery();
            List<ProductDTO> list = new ArrayList<>();
            while (rsProduct.next()) {
                ProductDTO productx = new ProductDTO();
                productx.setIdProduct(rsProduct.getString(1));
                productx.setTenProduct(rsProduct.getString(2));
                productx.setLoai(rsProduct.getString(3));
                productx.setChatLieu(rsProduct.getString(4));
                productx.setGiaTien(rsProduct.getInt(5));
                productx.setSoLuongTrongKho(rsProduct.getInt(6));
                productx.setDanhGia(rsProduct.getInt(7));
                productx.setTinhTrang(rsProduct.getString(8));
                getImagesByProduct(productx);
                list.add(productx);
            }
            return list;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rsProduct != null) rsProduct.close();
                if (rsImage != null) rsImage.close();
                if (pst != null) pst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public void getImagesByProduct(ProductDTO productDTO) {
        Connection con;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String sql = "Select * from hinhanh where id = ?";
        try {
            con = DBUtils.makeConnection();
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, productDTO.getIdProduct());
            rs = preparedStatement.executeQuery();
            while (rs.next()) {
                productDTO.addImage(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (preparedStatement != null) preparedStatement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    //filter theo gia san pham
    public ArrayList<ProductDTO> getProductByPrice(int priceLow, int priceHigh) {
        ArrayList<ProductDTO> result = new ArrayList<>();
        Connection con;
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;
        String sql = "Select * from product where giatien between ? and ?";
        try {
            con = DBUtils.makeConnection();
            preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, priceLow);
            preparedStatement.setInt(2, priceHigh);
            rs = preparedStatement.executeQuery();
            rs.beforeFirst();
            while (rs.next()) {
                ProductDTO product = new ProductDTO();
                product.setIdProduct(rs.getString(1));
                product.setTenProduct(rs.getString(2));
                product.setLoai(rs.getString(3));
                product.setChatLieu(rs.getString(4));
                product.setGiaTien(rs.getInt(5));
                product.setSoLuongTrongKho((rs.getInt(6)));
                product.setDanhGia(rs.getInt(7));
                product.setTinhTrang(rs.getString(8));
                getImagesByProduct(product);
                result.add(product);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (rs != null) rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;
    }


}
