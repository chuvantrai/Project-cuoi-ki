<%-- 
    Document   : home
    Created on : Mar 1, 2022, 1:47:22 PM
    Author     : 03623
--%>
<%@page import="model.Thongtinbds"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Tintuc"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="../client/component/head.jsp" %>
        <%
        
        ArrayList<Tintuc> tintucs = (ArrayList<Tintuc>)request.getAttribute("tintucs");
        ArrayList<Thongtinbds> thongtinbds = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbds");
        ArrayList<Thongtinbds> thongtinbdsdatnen = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbdsdatnen");
        ArrayList<Thongtinbds> thongtinbdscanho = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbdscanho");
        ArrayList<Thongtinbds> thongtinbdsnhapho = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbdsnhapho");
        ArrayList<Thongtinbds> thongtinbdsbietthu = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbdsbietthu");
        int index1= 0;
        Integer totalpage = (Integer)request.getAttribute("totalpage");
        Integer totalpagedatnen = (Integer)request.getAttribute("totalpagedatnen");
        Integer totalpagecanho = (Integer)request.getAttribute("totalpagecanho");
        Integer totalpagenhapho = (Integer)request.getAttribute("totalpagenhapho");
        Integer totalpagebietthu = (Integer)request.getAttribute("totalpagebietthu");
//        ArrayList<Dummy> dummies = (ArrayList<Dummy>)request.getAttribute("dummies");

        %>
    
        
        <!-- style CSS File -->
        <link href="css/style_home.css" rel="stylesheet" type="text/css"/>
        <!--Main JS File -->
        <script src="../js/main.js" type="text/javascript"></script>
        
        <style>
            
        </style>
        
    </head>
    <body>
        <!-- ======= Header ======= --> 
        <!-- navbar-->
        <%@include file="../client/component/header.jsp" %>
    <!-- Tin t???c B???t ?????ng S???n Nha Trang M???i Nh???t-->
    <div class=" row news0">
      <div class="col-12 mb-3  news1">
        <h2 >Th??ng Tin B???t ?????ng S???n Nha Trang M???i Nh???t</h2>
        <p>Tr?????c khi ?????u t?? h??y t??m hi???u k??? th??ng tin v??? b???t ?????ng s???n Nha Trang. D?????i ????y l?? nh???ng</p>
        <p>th??ng tin b??? ??ch v?? ch??nh th???ng ???????c ch??ng t??i chia s???.</p>
      </div>
           <div class="col-lg-6 mb-3 news2">
           <%for (Tintuc t : tintucs) {%>
                <%if(index1==0){ index1+=1;%>
                <div class="carousel-inner" style="padding-left: 20px;">
                    <div id="example2"><img src="img/tintuc/<%=t.getImgavar()%>" class="d-block w-100" alt="..." style=""></div>
                    <div class="carousel-caption d-md-block " style="letter-spacing: -1px;background: rgb(0, 0, 0); /* fallback color */background: rgba(0, 0, 0, 0.7);">
                        <a href="tintuc/detail?tintucid=<%=t.getId()%>"><h5 style="" ><%=t.getTieude()%></h5></a>
                        <p style=""><ion-icon name="calendar-outline"></ion-icon><%=t.getNgay()%></p>
                    </div>
                </div>
                <%}%>
          <%}%> 
          </div>
      <div class="col-lg-6 mb-3 news3">
        <%for (Tintuc t : tintucs) { %>
            <%if(index1>1 && index1<=3){ %>
        <div class="card mb-3" style="max-width: 680px;">
          <div class="row no-gutters">
            <div class="card-body col-md-4 ">
                <img class="new10" src="img/tintuc/<%=t.getImgavar()%>" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <a href="tintuc/detail?tintucid=<%=t.getId()%>"><h5 class="card-title"><%=t.getTieude()%></h5></a>
                <p class="card-text"><ion-icon name="calendar-outline"></ion-icon><small class="text-muted"><%=t.getNgay()%></small></p>
              </div>
            </div>
          </div>
        </div>
        <%}
             index1+=1;
            }%>
            <a href="tintuc/tatca">T???t c???</a>
      </div>
      
    </div>
  

<!-- th??ng tin C??n h???     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                    <h3 class="mb-3">C??n h??? </h3> 
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="thongtinbds/tatca?Loaibds=%23canho&thutu=moinhat&Khuvucbds=&locGia=">(t???t c???)</a>
                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators12" role="button" data-slide="prev">
                      <ion-icon name="chevron-back-sharp"></ion-icon>
                    </a>
                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators12" role="button" data-slide="next">
                      <ion-icon name="chevron-forward-sharp"></ion-icon>
                    </a>      
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators12" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <%for (int i =1; i <= totalpagecanho; i++) {%>
                            <%if(i==1){%> <div class="carousel-item active"><%}else{%><div class="carousel-item"><%}%>
                                <div class="row">
                                    <%for (Thongtinbds t : thongtinbdscanho) {
                                            if(t.getRowindex() >= ((i -1)*3 + 1) && t.getRowindex() <= i*3){%>
                                                <div class="col-md-4 mb-3" >
                                                    <a href="thongtinbds/detail?thongtinbdsid=<%=t.getIdbds()%>" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/Avarbds/<%=t.getImgavar()%>">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" >#<%=t.getIdbds()%>.<%=t.getTenbds()%></h4>
                                                                <p class="card-text">Gi??: <%=t.getGiachu()%>   <i class="bi bi-cash-coin" style="color: #49be25"></i></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>  
                                            <%}
                                        }
                                    %>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>            
<!-- th??ng tin ?????t n???n     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">?????t n???n </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="thongtinbds/tatca?Loaibds=%23datnen&thutu=moinhat&Khuvucbds=&locGia=">(t???t c???)</a>
                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators1" role="button" data-slide="prev">
                      <ion-icon name="chevron-back-sharp"></ion-icon>
                    </a>
                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators1" role="button" data-slide="next">
                      <ion-icon name="chevron-forward-sharp"></ion-icon>
                    </a>      
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <%for (int i =1; i <= totalpagedatnen; i++) {%>
                            <%if(i==1){%> <div class="carousel-item active"><%}else{%><div class="carousel-item"><%}%>
                                <div class="row">
                                    <%for (Thongtinbds t : thongtinbdsdatnen) {
                                            if(t.getRowindex() >= ((i -1)*3 + 1) && t.getRowindex() <= i*3){%>
                                                <div class="col-md-4 mb-3" >
                                                    <a href="thongtinbds/detail?thongtinbdsid=<%=t.getIdbds()%>" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/Avarbds/<%=t.getImgavar()%>">
                                                            
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" >#<%=t.getIdbds()%>.<%=t.getTenbds()%></h4>
                                                                <p class="card-text">Gi??: <%=t.getGiachu()%>    <i class="bi bi-cash-coin" style="color: #49be25"></i></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>  
                                            <%}
                                        }
                                    %>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- th??ng tin Nh?? ph???     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">Nh?? ph??? </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="thongtinbds/tatca?Loaibds=%23nhapho&thutu=moinhat&Khuvucbds=&locGia=">(t???t c???)</a>
                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators13" role="button" data-slide="prev">
                      <ion-icon name="chevron-back-sharp"></ion-icon>
                    </a>
                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators13" role="button" data-slide="next">
                      <ion-icon name="chevron-forward-sharp"></ion-icon>
                    </a>      
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators13" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <%for (int i =1; i <= totalpagenhapho; i++) {%>
                            <%if(i==1){%> <div class="carousel-item active"><%}else{%><div class="carousel-item"><%}%>
                                <div class="row">
                                    <%for (Thongtinbds t : thongtinbdsnhapho) {
                                            if(t.getRowindex() >= ((i -1)*3 + 1) && t.getRowindex() <= i*3){%>
                                                <div class="col-md-4 mb-3" >
                                                    <a href="thongtinbds/detail?thongtinbdsid=<%=t.getIdbds()%>" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/Avarbds/<%=t.getImgavar()%>">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" >#<%=t.getIdbds()%>.<%=t.getTenbds()%></h4>
                                                                <p class="card-text">Gi??: <%=t.getGiachu()%>     <i class="bi bi-cash-coin" style="color: #49be25"></i></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>  
                                            <%}
                                        }
                                    %>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- th??ng tin Bi???t th???     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">Bi???t th??? </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="thongtinbds/tatca?Loaibds=%23bietthu&thutu=moinhat&Khuvucbds=&locGia=">(t???t c???)</a>
                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators14" role="button" data-slide="prev">
                      <ion-icon name="chevron-back-sharp"></ion-icon>
                    </a>
                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators14" role="button" data-slide="next">
                      <ion-icon name="chevron-forward-sharp"></ion-icon>
                    </a>      
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators14" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <%for (int i =1; i <= totalpagebietthu; i++) {%>
                            <%if(i==1){%> <div class="carousel-item active"><%}else{%><div class="carousel-item"><%}%>
                                <div class="row">
                                    <%for (Thongtinbds t : thongtinbdsbietthu) {
                                            if(t.getRowindex() >= ((i -1)*3 + 1) && t.getRowindex() <= i*3){%>
                                                <div class="col-md-4 mb-3" >
                                                    <a href="thongtinbds/detail?thongtinbdsid=<%=t.getIdbds()%>" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/Avarbds/<%=t.getImgavar()%>">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" >#<%=t.getIdbds()%>.<%=t.getTenbds()%></h4>
                                                                <p class="card-text">Gi??: <%=t.getGiachu()%>     <i class="bi bi-cash-coin" style="color: #49be25"></i></p>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>  
                                            <%}
                                        }
                                    %>
                                </div>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Gi???i thi???u trang web -->
      <div class="row align-items-center alert-info gtt1">
      <div class="col-lg mb-4">
          <div class="solution-image">
              <img src="img/gioithieu/gioithieuhome.png" alt="image">
          </div>
      </div>
      <div class="col mb-4">
          <div class="solution-content gtt12">
          <h2>Trang t??m ki???m B???t ?????ng S???n v?? ?????t N???n S??? 1 T???i Nha Trang</h2>
          <p>??p d???ng nhi???u d???ch v??? ?????c bi???t h?????ng ?????n l?? trang th??ng tin v?? k?? g???i b???t ?????ng s???n h??ng ?????u t???i Nha Trang. V???i d???ch v??? nhanh ch??ng v?? th??ng tin ch??nh x??c nh???t.
          </p>
          <p>Ph???c v??? kh??ch h??ng b???ng c??? tr??i tim. Ni???m vui c???a ch??ng t??i l?? th???y kh??ch h??ng c???a m??nh an c?? l???p nghi???p - ?????u t?? sinh l???i cao.</p>
          <div class="solution-btn">
          <a href="../../Project_He153014/yeucau" class="btn btn-primary" role="button">LI??N H??? NGAY!<span style="top: -4.21249px; left: 21px;"></span></a>
          </div>
          </div>
      </div>
      </div>

      <!-- d???ch v???  -->
      <div class=" row news0 dv0">
        <div class="col-12 mb-3  news1">
          <h1>Nh???ng d???ch V??? H??ng ?????u</h1>
          <p>S??? m???nh v?? m???c ti??u c???a ch??ng t??i l?? ??nh sao s??ng lu??n h?????ng v??? l???i ??ch v?? tr???i nghi???m c???a</p>
          <p>kh??ch h??ng.</p>
        </div>
        <div class="container">
        <div class="row dv1">
          <div class="col mb-4 shadow p-3 bg-white rounded">
            <img src="img/dichvu1/facilities-1.png" class="rounded-circle" alt="...">
            Kh??ng ph??? ph?? th??m
          </div>
          <div class="col mb-4 shadow p-3 bg-white rounded gg1">
            <img src="img/dichvu1/dv2.png" class="rounded-circle" alt="...">
            B???o h??nh khi c?? s??? c???
          </div>
          <div class="col mb-4 shadow p-3 bg-white rounded">
            <img src="img/dichvu1/dv3.png" class="rounded-circle" alt="...">
            Ph???c v??? v?? h??? tr??? 24/7
          </div>
        </div>
      </div>
      <div class="container dv2">
      <div class="row ">
        <div class="col mb-4 shadow p-3 bg-white rounded">
          <img src="img/dichvu1/dv4.png" class="rounded-circle" alt="...">
          Chi ph?? d???ch v??? th???p nh???t
        </div>
        <div class="col mb-4 shadow p-3 bg-white rounded gg1">
          <img src="img/dichvu1/dv5.png" class="rounded-circle" alt="...">
          Cam k???t quy???n l???i
        </div>
        <div class="col mb-4 shadow p-3 bg-white rounded">
          <img src="img/dichvu1/dv6.png" class="rounded-circle" alt="...">
          S???n ph???m ph?? h???p t??i ti???n
        </div>
        </div>
      </div>
      </div> 

    <!-- Footer  jsboostrap icon-->
    <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    
    </body>
</html>
