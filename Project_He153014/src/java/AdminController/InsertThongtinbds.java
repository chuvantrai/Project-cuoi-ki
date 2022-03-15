/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.ThongtinbdsDBContext;
import dal.TintucDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Thongtinbds;

/**
 *
 * @author 03623
 */
public class InsertThongtinbds extends BaseAuthController {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("../view_admin/insertThongtinbds.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        
        Thongtinbds t = new Thongtinbds();
        t.setIdbds(0);
        String tenbds = request.getParameter("tenbds");
        t.setTenbds(tenbds);
        String loaibds = request.getParameter("loaibds");
        t.setLoaibds(loaibds);
        String khuvuc = request.getParameter("khuvuc");
        t.setKhuvucbds(khuvuc);
        String thongtin = request.getParameter("thongtin");
        t.setThongtinbds(thongtin);
        String giachu = request.getParameter("giachu");
        t.setGiachu(giachu);
        String giaso = request.getParameter("giaso");
        long giaso2 = Long.parseLong(giaso);
        t.setGiaso(giaso2);
        String img = request.getParameter("img");
        t.setImgavar(img);
        t.setRowindex(0);
        long millis=System.currentTimeMillis();    
        java.sql.Date date = new java.sql.Date(millis);
        t.setNgay(date);
        
        ThongtinbdsDBContext db = new ThongtinbdsDBContext();
        db.insertThongtinbds(t);
        String thongbao2 = "Đã thêm sản phẩm thành công!";
        request.setAttribute("thongbao2", thongbao2);
        request.getRequestDispatcher("../view_admin/insertThongtinbds.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
