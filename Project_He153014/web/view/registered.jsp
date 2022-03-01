<%-- 
    Document   : registered
    Created on : Mar 1, 2022, 10:58:33 PM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <!-- Favicons -->
        <link href="../img/logo/logo-nha-dat.png" rel="icon">
        
        <script src="../js/main.js" type="text/javascript"></script>
    </head>
    <body>
        <form action="registered" method="POST">
            Tên Đăng Nhập: <input type="text" name="username" maxlength="8" id="dk1"/>(tối đa 8 kí tự)
            <br/>
            Mật Khẩu: <input type="text" name="password" maxlength="8" id="dk2"/>(tối đa 8 kí tự)
            <br/>
            Tên người dùng: <input type="text" name="displayname" maxlength="16" id="dk3"/>(tối đa 16 kí tự)
            <br/>
<!--            <input type="submit" value="Đăng Ký" style="display: none" id="dk4"/>-->
        </form>
            <input type="submit" value="Đăng Ký" onclick="checkForm()" id="dk5" />
            
        
        
        
    </body>
</html>
