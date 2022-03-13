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
import model.Tintuc;

/**
 *
 * @author 03623
 */
public class TintucDBContext extends DBContext{
    public ArrayList<Tintuc> getAllTintuc() //ngày gần nhất
    {
        ArrayList<Tintuc> tintucs = new ArrayList<>();
        try {
            String sql = "SELECT ID,Tieude,Noidung,ngay,imgAvar FROM dbo.TinTuc1\n" +
                            "ORDER BY ngay DESC";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getString("imgAvar"));
                tintucs.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tintucs;
    }
    
    public Tintuc getTintuctheoid(int id)
    {
        try {
            String sql = "SELECT ID,Tieude,Noidung,ngay,imgAvar FROM dbo.TinTuc1\n" +
                            "WHERE ID=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if(rs.next())
            {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getString("imgAvar"));
                return t;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ThongtinbdsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Tintuc> getTintuctheopage(int pageindex,int pagesize) {
        ArrayList<Tintuc> Tintucs = new ArrayList<>();
        try {
            String sql = "SELECT ID , Tieude,t.Noidung,t.ngay,t.imgAvar FROM (SELECT * ,(ROW_NUMBER() OVER (ORDER BY ID ASC)) as row_indexFROM FROM dbo.TinTuc1) t\n" +
                    "WHERE t.row_indexFROM >=(? -1)*? + 1 AND t.row_indexFROM <= ? * ?\n" +
                    "ORDER BY t.ID DESC";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, pageindex);
            stm.setInt(2, pagesize);
            stm.setInt(3, pageindex);
            stm.setInt(4, pagesize);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Tintuc t = new Tintuc();
                t.setId(rs.getInt("ID"));
                t.setTieude(rs.getString("Tieude"));
                t.setNoidung(rs.getString("Noidung"));
                t.setNgay(rs.getDate("ngay"));
                t.setImgavar(rs.getString("imgAvar"));
                Tintucs.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Tintucs;
    }
    
    public int count() {
        try {
            String sql = "SELECT COUNT(*) as Total FROM dbo.TinTuc1";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                return rs.getInt("Total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

//        public static void main(String[] args){
//
//            TintucDBContext db = new TintucDBContext();
//            ArrayList<Tintuc> acc = db.getTintuctheopage(2, 3);
//            for (Tintuc a : acc) {
//                System.out.println(a.getTieude());
//                System.out.println(a.getImgavar());
//            }
////                Tintuc t = db.getTintuctheoid(1);
////                System.out.println(t.getTieude());
////                System.out.println(t.getImgavar());
//    }
}
