/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminController;

import controller.BaseAuthController;
import dal.TintucDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Tintuc;

/**
 *
 * @author 03623
 */
public class UpdateTintucController extends BaseAuthController {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        TintucDBContext db = new TintucDBContext();
        
        String idtin = request.getParameter("tintucid");
        int id = Integer.parseInt(idtin);
        Tintuc t = db.getTintuctheoid(id);
        request.setAttribute("tintuc", t);
        request.getRequestDispatcher("../view_admin/updateTintuc.jsp").forward(request, response);
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
        
        String idtin = request.getParameter("idtintuc");
        int id = Integer.parseInt(idtin);
        String tieude = request.getParameter("tieude");
        String ngay = request.getParameter("ngay");
        Date ngay2 = Date.valueOf(ngay);
        String noidung = request.getParameter("noidung");
        String img = request.getParameter("img");
        
        TintucDBContext db = new TintucDBContext();
        Tintuc t = new Tintuc();
        t.setId(id);
        t.setTieude(tieude);
        t.setNgay(ngay2);
        t.setNoidung(noidung);
        t.setImgavar(img);
        db.updateTintuc(t);
        response.sendRedirect("tatca");
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
