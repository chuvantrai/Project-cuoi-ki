<%-- 
    Document   : home
    Created on : Mar 1, 2022, 1:47:22 PM
    Author     : 03623
--%>

<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        
        <title>Bất Động Sản Nha Trang</title>
        <!-- Favicons -->
        <link href="../img/logo/logo-nha-dat.png" rel="icon">
        <!-- <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">-->
        
        <%
        Account account = (Account)session.getAttribute("account");
        
        %>

        
        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

        <!-- style CSS File -->
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        
        
    </head>
    <body>
        <!-- ======= Header ======= -->
        <header>
            <%if(account == null){%>
                <a href="">Đăng Kí</a>
                <a href="/Project_He153014/login">Đăng Nhập</a>
            <%}else{%>
                <a href="">Đăng Xuất</a> Xin Chào <%=account.getDisplayname()%>
                
            <%}%>
        </header>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!--Main JS File -->
        <script src="../js/main.js" type="text/javascript"></script>
    </body>
</html>
