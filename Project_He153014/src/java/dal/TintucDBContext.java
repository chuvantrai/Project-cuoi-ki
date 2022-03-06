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
    public ArrayList<Tintuc> getAllTintuc()
    {
        ArrayList<Tintuc> tintucs = new ArrayList<>();
        try {
            String sql = "SELECT ID, Tieude, Noidung, ngay FROM TinTuc\n" +
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
                tintucs.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TintucDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tintucs;
    }
    
}
