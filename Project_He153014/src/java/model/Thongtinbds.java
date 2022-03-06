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
public class Thongtinbds {
    private int idbds;
    private String tenbds;
    private String thongtinbds;
    private String loaibds;
    private String khuvucbds;
    private String giachu;
    private Long giaso;
    private Date ngay;
    private int rowindex;
    
    public Thongtinbds() {
    }

    public Thongtinbds( String tenbds, String thongtinbds, String loaibds, String khuvucbds, String giachu, Long giaso, Date ngay) {
        
        this.tenbds = tenbds;
        this.thongtinbds = thongtinbds;
        this.loaibds = loaibds;
        this.khuvucbds = khuvucbds;
        this.giachu = giachu;
        this.giaso = giaso;
        this.ngay = ngay;
        this.rowindex = rowindex;
    }

    public int getRowindex() {
        return rowindex;
    }

    public void setRowindex(int rowindex) {
        this.rowindex = rowindex;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }

    public int getIdbds() {
        return idbds;
    }

    public void setIdbds(int idbds) {
        this.idbds = idbds;
    }

    public String getTenbds() {
        return tenbds;
    }

    public void setTenbds(String tenbds) {
        this.tenbds = tenbds;
    }

    public String getThongtinbds() {
        return thongtinbds;
    }

    public void setThongtinbds(String thongtinbds) {
        this.thongtinbds = thongtinbds;
    }

    public String getLoaibds() {
        return loaibds;
    }

    public void setLoaibds(String loaibds) {
        this.loaibds = loaibds;
    }

    public String getKhuvucbds() {
        return khuvucbds;
    }

    public void setKhuvucbds(String khuvucbds) {
        this.khuvucbds = khuvucbds;
    }

    public String getGiachu() {
        return giachu;
    }

    public void setGiachu(String giachu) {
        this.giachu = giachu;
    }

    public Long getGiaso() {
        return giaso;
    }

    public void setGiaso(Long giaso) {
        this.giaso = giaso;
    }
    
    
    
}
