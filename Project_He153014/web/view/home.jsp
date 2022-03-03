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
        <link href="img/logo/logo-nha-dat.png" rel="icon">
<!--        <link href="img/logo/logo-nha-dat.png" rel="apple-touch-icon">-->
        
        <%
        Account account = (Account)session.getAttribute("account");
        
        %>


        <!-- style CSS File -->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!--Main JS File -->
        <script src="../js/main.js" type="text/javascript"></script>
        
    </head>
    <body>
        <!-- ======= Header ======= -->
        <header>
            <%if(account == null){%>
                <a href="/Project_He153014/registered">Đăng Kí</a>
                <a href="/Project_He153014/login">Đăng Nhập</a>
            <%}else{%>
            <a href="/Project_He153014/logout">Đăng Xuất</a> Xin Chào ${sessionScope.account.displayname}
                
            <%}%>
        </header>


        
    </body>
</html>
