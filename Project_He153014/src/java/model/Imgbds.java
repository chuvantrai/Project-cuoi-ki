/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author 03623
 */
public class Imgbds {
    private int idbds;
    private String imgbds;
    private int idimg;

    public Imgbds() {
    }

    public Imgbds(int idbds, String imgbds, int idimg) {
        this.idbds = idbds;
        this.imgbds = imgbds;
        this.idimg = idimg;
    }

    public int getIdimg() {
        return idimg;
    }

    public void setIdimg(int idimg) {
        this.idimg = idimg;
    }

    

    public int getIdbds() {
        return idbds;
    }

    public void setIdbds(int idbds) {
        this.idbds = idbds;
    }

    public String getImgbds() {
        return imgbds;
    }

    public void setImgbds(String imgbds) {
        this.imgbds = imgbds;
    }
    
    
}
