/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.YeucauDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Yeucau;

/**
 *
 * @author 03623
 */
public class YeucauController extends HttpServlet {

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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("account");
        
        if(account == null){
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }else{
            request.getRequestDispatcher("view/guiyeucau.jsp").forward(request, response);
        }
        
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("account");
        if(account == null){
            request.getRequestDispatcher("view/login.jsp").forward(request, response);
        }
        
        String hoten = request.getParameter("hoten");
        String sdt = request.getParameter("sdt");
        String noidung = request.getParameter("noidung");
        YeucauDBContext db = new YeucauDBContext();
        Yeucau y = new Yeucau();
        y.setIdyc(1);
        y.setHoten(hoten);
        y.setSdt(Long.parseLong(sdt));
        y.setNoidung(noidung);
        long millis=System.currentTimeMillis();   
        java.sql.Date date = new java.sql.Date(millis); 
        y.setDate(date);
        y.setUserid(account.getUserid());
        db.insertYeucau(y);
        
        String thongbao2 = "???? g???i y??u c???u th??nh c??ng chuy??n vi??n Chu V??n Ng???c s??? li??n l???c s???m nh???t t???i qu?? kh??ch!";
        request.setAttribute("thongbao2", thongbao2);
        request.getRequestDispatcher("view/guiyeucau.jsp").forward(request, response);
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
