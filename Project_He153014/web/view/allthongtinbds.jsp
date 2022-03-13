<%-- 
    Document   : allthongtinbds
    Created on : Mar 13, 2022, 9:42:54 PM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>
        
        <link href="../css/allthongtinbds.css" rel="stylesheet" type="text/css"/>
        <%
        
        String thutu1 = (String)request.getAttribute("thutu");
        String Loaibds = (String)request.getAttribute("Loaibds");
        String Khuvucbds = (String)request.getAttribute("Khuvucbds");
        String locGia = (String)request.getAttribute("locGia");
        if(thutu1 == null){
            thutu1 = "";
        }
        if(Loaibds == null){
            Loaibds = "";
        }
        if(Khuvucbds == null){
            Khuvucbds = "";
        }
        if(locGia == null){
            locGia = "";
        }
        %>
        <script>
            function submitData()
            {
                document.getElementById("searchFrm").submit();
            }

        </script>
        <!--        file js-->
<script src="../js/alltintuc.js" type="text/javascript"></script>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
            <div class="wrapper">
                <form action="tatca" method="GET" id="searchFrm" onchange="submitData();">
        <div class="d-lg-flex align-items-lg-center pt-2">
            <div class="form-inline d-flex align-items-center my-2 mr-lg-2 radio bg-light border"> 
                <label class="options">Đất nền <input type="radio" name="Loaibds" value="#datnen" <%=(Loaibds.equals("#datnen"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Căn hộ<input type="radio" name="Loaibds" value="#canho" <%=(Loaibds.equals("#canho"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Nhà Phố <input type="radio" name="Loaibds" value="#nhapho" <%=(Loaibds.equals("#nhapho"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Biệt thự <input type="radio" name="Loaibds" value="#bietthu" <%=(Loaibds.equals("#bietthu"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                <label class="options">Tất cả <input type="radio" name="Loaibds" value="" <%=(Loaibds.equals(""))?"checked":"" %>> <span class="checkmark"></span> </label> 
            </div>
            <div class="form-inline d-flex align-items-center my-2 checkbox bg-light border mx-lg-2"> 
                <label>Sắp xếp <i class="bi bi-filter-square" style="font-size: 1rem;">  </i> 
                </label>
                 
                <select name="thutu" id="country" class="bg-light">
                    <option value="moinhat" <%=(thutu1.equals("moinhat"))?"selected=\"selected\"":"" %>>Mới nhất</option>
                    <option value="cunhat" <%=(thutu1.equals("cunhat"))?"selected=\"selected\"":"" %>>Cũ-mới</option>
                    <option value="thap-cao" <%=(thutu1.equals("thap-cao"))?"selected=\"selected\"":""%>>Giá từ thấp tới cao</option>
                    <option value="cao-thap" <%=(thutu1.equals("cao-thap"))?"selected=\"selected\"":""%>>Giá từ cao tới thấp</option>
                </select> 
            </div>
        </div>
<!--        <div class="filters"> <button class="btn btn-success" type="button" data-toggle="collapse" data-target="#mobile-filter" aria-expanded="true" aria-controls="mobile-filter">Filter<span class="px-1 fas fa-filter"></span></button> </div>-->
<!--        <div class="content py-md-0 py-3">-->
            <section id="sidebar">
                <div class="py-3">
                    <h5 class="font-weight-bold">Khu vực BDS</h5>
                    <ul class="list-group">
                    <label class="options">Tất cả <input type="radio" name="Khuvucbds" value="" <%=(Khuvucbds.equals(""))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Nha Trang <input type="radio" name="Khuvucbds" value="#nhatrang" <%=(Khuvucbds.equals("#nhatrang"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Cam Lâm <input type="radio" name="Khuvucbds" value="#canlam" <%=(Khuvucbds.equals("#canlam"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Diên Khánh <input type="radio" name="Khuvucbds" value="#diemkhanh" <%=(Khuvucbds.equals("#diemkhanh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Khánh Vĩnh <input type="radio" name="Khuvucbds" value="#khanhvinh" <%=(Khuvucbds.equals("#khanhvinh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Cam Ranh <input type="radio" name="Khuvucbds" value="#camrang" <%=(Khuvucbds.equals("#camrang"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Ninh Hòa <input type="radio" name="Khuvucbds" value="#ninhhoa" <%=(Khuvucbds.equals("#ninhhoa"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Vạn Ninh <input type="radio" name="Khuvucbds" value="#vanninh" <%=(Khuvucbds.equals("#vanninh"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    <label class="options">Khu Vực Khác <input type="radio" name="Khuvucbds" value="" <%=(Khuvucbds.equals("#"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                    </ul>
                </div>
                <div class="py-3">
                    <h5 class="font-weight-bold">Mức giá</h5>
                    <ul class="list-group">
                        <label class="options">Tất cả <input type="radio" name="locGia" value="" <%=(locGia.equals(""))?"checked":"" %>>  <span class="checkmark"></span> </label> 
                        <label class="options">< 500 triệu <input type="radio" name="locGia" value="<500" <%=(locGia.equals("<500"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">500 - 800 triệu <input type="radio" name="locGia" value="500-800" <%=(locGia.equals("500-800"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">800 triệu - 1 tỷ <input type="radio" name="locGia" value="800-1t" <%=(locGia.equals("800-1t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">1 - 3 tỷ <input type="radio" name="locGia" value="1-3t" <%=(locGia.equals("1-3t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">3 - 7 tỷ <input type="radio" name="locGia" value="3-7t" <%=(locGia.equals("3-7t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">7 - 10 tỷ <input type="radio" name="locGia" value="7-10t" <%=(locGia.equals("7-10t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">10 - 20 tỷ <input type="radio" name="locGia" value="10-20t" <%=(locGia.equals("10-20t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        <label class="options">≥ 20 tỷ<input type="radio" name="locGia" value=">20t" <%=(locGia.equals(">20t"))?"checked":"" %>> <span class="checkmark"></span> </label> 
                        </ul>
                </div>
            </section> <!-- Products Section -->
            </form>
            <section id="products">
                <div class="container py-3">
                    <div class="row">
                        <c:forEach items="${requestScope.thongtinbds}" var="t">
                        <div class="col-lg-4 col-md-6 col-sm-10 offset-md-0 offset-sm-1 pt-md-0 pt-4">
                            <div class="card"> <img class="card-img-top" src="../img/Avarbds/${t.imgavar}">
                                <div class="card-body">
                                    <h6 class="font-weight-bold pt-1">${t.tenbds}</h6>
                                    <div class="d-flex align-items-center product"> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="fas fa-star"></span> <span class="far fa-star"></span> </div>
                                    <div class="d-flex align-items-center justify-content-between pt-3">
                                        <div class="d-flex flex-column">
                                            <div class="h6 font-weight-bold">${t.giachu}</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </section>
            
<!--        </div>-->
    </div>
        
             
            <div id="paggerbot" class="pagger"> </div>
        <script> 
//            pagger("paggertop",${requestScope.pageindex},${requestScope.totalpage},2);
            pagger("paggerbot",${requestScope.pageindex},${requestScope.totalpage},2);
//            pagger3("pagger3");
        </script>
        
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
