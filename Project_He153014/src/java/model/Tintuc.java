/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author 03623
 */
public class Tintuc {
    private int id;
    private String tieude;
    private String noidung;
    private Date ngay;
    private String imgavar;

    public Tintuc() {
    }

    public Tintuc(int id, String tieude, String noidung, Date ngay, String imgavar) {
        this.id = id;
        this.tieude = tieude;
        this.noidung = noidung;
        this.ngay = ngay;
        this.imgavar = imgavar;
    }

    
    public String getImgavar() {
        return imgavar;
    }

    public void setImgavar(String imgavar) {
        this.imgavar = imgavar;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }
    
    
    
    
}
