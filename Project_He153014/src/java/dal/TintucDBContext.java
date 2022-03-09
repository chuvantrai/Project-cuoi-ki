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
    

//        public static void main(String[] args){
//
//            TintucDBContext db = new TintucDBContext();
////            ArrayList<Tintuc> acc = db.getAllTintuc();
////            for (Tintuc a : acc) {
////                System.out.println(a.getTieude());
////                System.out.println(a.getImgavar());
////            }
//                Tintuc t = db.getTintuctheoid(1);
//                System.out.println(t.getTieude());
//                System.out.println(t.getImgavar());
//    }
}
