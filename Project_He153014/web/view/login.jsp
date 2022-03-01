<%-- 
    Document   : login
    Created on : Mar 1, 2022, 10:17:32 PM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Nhập</title>
        <!-- Favicons -->
        <link href="../img/logo/logo-nha-dat.png" rel="icon">
    </head>
    <body>
        <form action="login" method="POST"> 
            Tên Đăng Nhập: <input type="text" name="username"/>
            <br/>
            Mật Khẩu: <input type="password" name="password" />
            <br/>
            <input type="submit" value="Đăng Nhập"/>
        </form>
    </body>
</html>
