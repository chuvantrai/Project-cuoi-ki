/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Imgbds;
import model.Thongtinbds;

/**
 *
 * @author 03623
 */
public class ThongtinbdsDBContext extends DBContext{
    public ArrayList<Thongtinbds> getAllthongtinbds(){
        ArrayList<Thongtinbds> thongtinbds = new ArrayList<>();
        try {
            String sql = "SELECT IDbds,Tenbds,Thongtinbds,Loaibds,Khuvucbds,Giachu,Giaso,Ngay, ImgAvar,\n" +
                            "(ROW_NUMBER() OVER (ORDER BY IDbds ASC)) as row_index FROM dbo.ThongTinBDS";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Thongtinbds t = new Thongtinbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setTenbds(rs.getString("Tenbds"));
                t.setThongtinbds(rs.getString("Thongtinbds"));
                t.setLoaibds(rs.getString("Loaibds"));
                t.setKhuvucbds(rs.getString("Khuvucbds"));
                t.setGiachu(rs.getString("Giachu"));
                t.setGiaso(rs.getLong("Giaso"));
                t.setNgay(rs.getDate("ngay"));
                t.setRowindex(rs.getInt("row_index"));
                t.setImgavar(rs.getString("ImgAvar"));
                thongtinbds.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return thongtinbds;
    }
    
    public ArrayList<Thongtinbds> getThongtinbdsesTheoPage(int pageindex,int pagesize) {
        ArrayList<Thongtinbds> thongtinbds = new ArrayList<>();
        try {
            String sql = "SELECT IDbds,Tenbds,Thongtinbds,Loaibds,Khuvucbds,Giachu,Giaso,Ngay,ImgAvar, tt.row_index \n" +
                            "FROM (SELECT *,ROW_NUMBER() OVER (ORDER BY IDbds ASC) as row_index FROM dbo.ThongTinBDS) as tt\n" +
                            "WHERE row_index >= (? -1)*? + 1 AND row_index <= ?*?";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Thongtinbds t = new Thongtinbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setTenbds(rs.getString("Tenbds"));
                t.setThongtinbds(rs.getString("Thongtinbds"));
                t.setLoaibds(rs.getString("Loaibds"));
                t.setKhuvucbds(rs.getString("Khuvucbds"));
                t.setGiachu(rs.getString("Giachu"));
                t.setGiaso(rs.getLong("Giaso"));
                t.setNgay(rs.getDate("ngay"));
                t.setRowindex(rs.getInt("row_index"));
                t.setImgavar(rs.getString("ImgAvar"));
                thongtinbds.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return thongtinbds;
    }

    public int count() {
        try {
            String sql = "SELECT COUNT(*) as Total FROM dbo.ThongTinBDS";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    public int countloai(String loai) {
        try {
            String sql = "SELECT COUNT(*) as Total FROM dbo.ThongTinBDS\n" +
                            "WHERE Loaibds= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, loai);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
    public ArrayList<Thongtinbds> getAllthongtinbdstheoloai(String loaibds ){
        ArrayList<Thongtinbds> thongtinbds = new ArrayList<>();
        try {
            String sql = "SELECT IDbds,Tenbds,Thongtinbds,Loaibds,Khuvucbds,Giachu,Giaso,Ngay,ImgAvar, (ROW_NUMBER() OVER (ORDER BY IDbds ASC)) as row_index FROM dbo.ThongTinBDS\n" +
                            "WHERE Loaibds= ?\n" +
                            "ORDER BY IDbds";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, loaibds);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Thongtinbds t = new Thongtinbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setTenbds(rs.getString("Tenbds"));
                t.setThongtinbds(rs.getString("Thongtinbds"));
                t.setLoaibds(rs.getString("Loaibds"));
                t.setKhuvucbds(rs.getString("Khuvucbds"));
                t.setGiachu(rs.getString("Giachu"));
                t.setGiaso(rs.getLong("Giaso"));
                t.setNgay(rs.getDate("ngay"));
                t.setRowindex(rs.getInt("row_index"));
                t.setImgavar(rs.getString("ImgAvar"));
                thongtinbds.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return thongtinbds;
    }
    
    public Thongtinbds getThongtinbdstheoid(int id)
    {
        try {
            String sql = "SELECT IDbds,Tenbds,Thongtinbds,Loaibds,Khuvucbds,Giachu,Giaso,Ngay, ImgAvar, (ROW_NUMBER() OVER (ORDER BY IDbds ASC)) as row_index\n" +
                            "FROM dbo.ThongTinBDS\n" +
                            "WHERE IDbds = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Thongtinbds t = new Thongtinbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setTenbds(rs.getString("Tenbds"));
                t.setThongtinbds(rs.getString("Thongtinbds"));
                t.setLoaibds(rs.getString("Loaibds"));
                t.setKhuvucbds(rs.getString("Khuvucbds"));
                t.setGiachu(rs.getString("Giachu"));
                t.setGiaso(rs.getLong("Giaso"));
                t.setNgay(rs.getDate("ngay"));
                t.setRowindex(rs.getInt("row_index"));
                t.setImgavar(rs.getString("ImgAvar"));
                return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Imgbds> getAllimgbds(int idbds){
        ArrayList<Imgbds> imgbds = new ArrayList<>();
        try {
            String sql = "SELECT a.IDbds, a.img FROM dbo.ImgBDS AS a\n" +
                            "INNER JOIN dbo.ThongTinBDS AS b\n" +
                            "ON b.IDbds = a.IDbds\n" +
                            "WHERE b.IDbds= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, idbds);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Imgbds t = new Imgbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setImgbds(rs.getString("img"));
                imgbds.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return imgbds;
    }
    
    public ArrayList<Thongtinbds> getThongtinbdsphanpage (String Loaibds,String Khuvucbds,Long Giasobe, Long Giasolon, int pageindex,int pagesize, String thutu) {
        ArrayList<Thongtinbds> thongtinbds = new ArrayList<>();
        try {
            String sql = "SELECT IDbds, Tenbds, Thongtinbds, Loaibds, Khuvucbds, Giachu, Giaso, Ngay, ImgAvar, row_indexFROM \n" +
                    "FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY "+thutu+")) as row_indexFROM FROM dbo.ThongTinBDS \n" +
                    "			WHERE Loaibds "+Loaibds+" AND Khuvucbds "+Khuvucbds+" AND Giaso >= ? AND Giaso <= ?) t\n" +
                    "					WHERE t.row_indexFROM >= (? -1)*? + 1 AND t.row_indexFROM <= ? * ? \n" +
                    "					";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setLong(1, Giasobe);
            stm.setLong(2, Giasolon);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            stm.setInt(5, pageindex);
            stm.setInt(6, pagesize);
            
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Thongtinbds t = new Thongtinbds();
                t.setIdbds(rs.getInt("IDbds"));
                t.setTenbds(rs.getString("Tenbds"));
                t.setThongtinbds(rs.getString("Thongtinbds"));
                t.setLoaibds(rs.getString("Loaibds"));
                t.setKhuvucbds(rs.getString("Khuvucbds"));
                t.setGiachu(rs.getString("Giachu"));
                t.setGiaso(rs.getLong("Giaso"));
                t.setNgay(rs.getDate("ngay"));
                t.setRowindex(rs.getInt("row_indexFROM"));
                t.setImgavar(rs.getString("ImgAvar"));
                thongtinbds.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return thongtinbds;
    }
    
    public int countloaipage(String Loaibds,String Khuvucbds,Long Giasobe, Long Giasolon, int pageindex,int pagesize, String thutu) {
        try {
            String sql = "SELECT COUNT(IDbds) as Total \n" +
                    "FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY IDbds ASC)) as row_indexFROM FROM dbo.ThongTinBDS \n" +
                    "			WHERE Loaibds "+Loaibds+" AND Khuvucbds "+Khuvucbds+" AND Giaso >= ? AND Giaso <= ?) t\n" +
                    "					";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setLong(1, Giasobe);
            stm.setLong(2, Giasolon);
//            stm.setInt(3, pageindex);
//            stm.setInt(4, pagesize);
//            stm.setInt(5, pageindex);
//            stm.setInt(6, pagesize);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    
     public static void main(String[] args){
         Long i = 700000000L;
         Long j = 1000000000L;
            ThongtinbdsDBContext db = new ThongtinbdsDBContext();
            ArrayList<Thongtinbds> acc = db.getThongtinbdsphanpage("LIKE '#datnen'", "NOT LIKE '#nhatrang'", i, j, 1, 2, "ORDER BY t.Giaso ASC");
            for (Thongtinbds a : acc) {
                System.out.println(a.getIdbds());
                System.out.println(a.getKhuvucbds());
                System.out.println(a.getLoaibds());
            }
            
            int f = db.countloaipage("LIKE '#datnen'", "NOT LIKE '#nhatrang'", i, j, 1, 2, "ORDER BY t.Giaso ASC");
            System.out.println(f);
     }

}
