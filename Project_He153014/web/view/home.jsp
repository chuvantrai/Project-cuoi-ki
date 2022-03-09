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
        
        ArrayList<Tintuc> tintucs = (ArrayList<Tintuc>)session.getAttribute("tintucs");
        ArrayList<Thongtinbds> thongtinbds = (ArrayList<Thongtinbds>)session.getAttribute("thongtinbds");
        ArrayList<Thongtinbds> thongtinbdsdatnen = (ArrayList<Thongtinbds>)session.getAttribute("thongtinbdsdatnen");
        ArrayList<Thongtinbds> thongtinbdscanho = (ArrayList<Thongtinbds>)session.getAttribute("thongtinbdscanho");
        ArrayList<Thongtinbds> thongtinbdsnhapho = (ArrayList<Thongtinbds>)session.getAttribute("thongtinbdsnhapho");
        ArrayList<Thongtinbds> thongtinbdsbietthu = (ArrayList<Thongtinbds>)session.getAttribute("thongtinbdsbietthu");
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
        
        
    </head>
    <body>
        <!-- ======= Header ======= --> 
        <!-- navbar-->
        <%@include file="../client/component/header.jsp" %>
    <!-- Tin tức Bất Động Sản Nha Trang Mới Nhất-->
    <div class=" row news0">
      <div class="col-12 mb-3  news1">
        <h2>Thông Tin Bất Động Sản Nha Trang Mới Nhất</h2>
        <p>Trước khi đầu tư hãy tìm hiểu kỹ thông tin về bất động sản Nha Trang. Dưới đây là những</p>
        <p>thông tin bổ ích và chính thống được chúng tôi chia sẻ.</p>
      </div>
           <div class="col-6 mb-3 news2">
           <%for (Tintuc t : tintucs) {%>
                <%if(index1==0){ index1+=1;%>
                <div class="carousel-inner">
                    <img src="img/logo/nhatrang2.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <a href=""><h5><%=t.getTieude()%></h5></a>
                        <p><ion-icon name="calendar-outline"></ion-icon><%=t.getNgay()%></p>
                    </div>
                </div>
                <%}%>
          <%}%> 
          </div>

      <div class="col-6 mb-3 news3">
        <%for (Tintuc t : tintucs) { %>
            <%if(index1>1 && index1<=3){ %>
        <div class="card mb-3" style="max-width: 680px;">
          <div class="row no-gutters">
            <div class="card-body col-md-4 ">
                <img class="new10" src="img/logo/nhatrang2.jpg" alt="...">
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <a href=""><h5 class="card-title"><%=t.getTieude()%></h5></a>
                <p class="card-text"><ion-icon name="calendar-outline"></ion-icon><small class="text-muted"><%=t.getNgay()%></small></p>
              </div>
            </div>
          </div>
        </div>
        <%}
             index1+=1;
            }%>
            <a href="">Tất cả</a>
      </div>
      
    </div>
  
            
<!-- thông tin Căn hộ     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                    <h3 class="mb-3">Căn hộ </h3> 
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="">(tất cả)</a>
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
                                                    <a href="" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/logo/nhatrang2.jpg">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" ><%=t.getTenbds()%></h4>
                                                                <p class="card-text">Giá: <%=t.getGiachu()%></p>
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
<!-- thông tin Đất nền     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">Đất nền </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="">(tất cả)</a>
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
                                                    <a href="" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/logo/nhatrang2.jpg">
                                                            
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" ><%=t.getTenbds()%></h4>
                                                                <p class="card-text">Giá: <%=t.getGiachu()%></p>
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
<!-- thông tin Nhà phố     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">Nhà phố </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="">(tất cả)</a>
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
                                                    <a href="" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/logo/nhatrang2.jpg">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" ><%=t.getTenbds()%></h4>
                                                                <p class="card-text">Giá: <%=t.getGiachu()%></p>
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
<!-- thông tin Biệt thự     -->
        <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6 thanhkv alert-primary">
                  <h3 class="mb-3">Biệt thự </h3>
                </div>
                <div class="col-6 text-right thanhkv alert-primary">
                    <a href="">(tất cả)</a>
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
                                                    <a href="" class="card-link list-group-item-action">
                                                        <div class="card ">
                                                            <img class="img-fluid" alt="100%x280" src="img/logo/nhatrang2.jpg">
                                                            <div class="card-body">
                                                                <%for (int j = 0; j < 5; j++) {%> <i class="bi bi-star-fill" style="color: #feba45"></i><%}%>
                                                                <h4 class="card-title" ><%=t.getTenbds()%></h4>
                                                                <p class="card-text">Giá: <%=t.getGiachu()%></p>
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
    <!-- Giới thiệu trang web -->
      <div class="row align-items-center alert-info gtt1">
      <div class="col-lg mb-4">
          <div class="solution-image">
              <img src="img/gioithieu/gioithieuhome.png" alt="image">
          </div>
      </div>
      <div class="col mb-4">
          <div class="solution-content gtt12">
          <h2>Trang tìm kiếm Bất Động Sản và Đất Nền Số 1 Tại Nha Trang</h2>
          <p>Áp dụng nhiều dịch vụ đặc biệt hướng đến là trang thông tin và ký gửi bất động sản hàng đầu tại Nha Trang. Với dịch vụ nhanh chóng và thông tin chính xác nhất.
          </p>
          <p>Phục vụ khách hàng bằng cả trái tim. Niềm vui của chúng tôi là thấy khách hàng của mình an cư lập nghiệp - đầu tư sinh lời cao.</p>
          <div class="solution-btn">
          <a href="" class="btn btn-primary" role="button">LIÊN HỆ NGAY!<span style="top: -4.21249px; left: 21px;"></span></a>
          </div>
          </div>
      </div>
      </div>

      <!-- dịch vụ  -->
      <div class=" row news0 dv0">
        <div class="col-12 mb-3  news1">
          <h1>Những dịch Vụ Hàng Đầu</h1>
          <p>Sứ mệnh và mục tiêu của chúng tôi là ánh sao sáng luôn hướng về lợi ích và trải nghiệm của</p>
          <p>khách hàng.</p>
        </div>
        <div class="container">
        <div class="row dv1">
          <div class="col mb-4 shadow p-3 bg-white rounded">
            <img src="img/dichvu1/facilities-1.png" class="rounded-circle" alt="...">
            Không phụ phí thêm
          </div>
          <div class="col mb-4 shadow p-3 bg-white rounded gg1">
            <img src="img/dichvu1/dv2.png" class="rounded-circle" alt="...">
            Bảo hành khi có sự cố
          </div>
          <div class="col mb-4 shadow p-3 bg-white rounded">
            <img src="img/dichvu1/dv3.png" class="rounded-circle" alt="...">
            Phục vụ và hỗ trợ 24/7
          </div>
        </div>
      </div>
      <div class="container dv2">
      <div class="row ">
        <div class="col mb-4 shadow p-3 bg-white rounded">
          <img src="img/dichvu1/dv4.png" class="rounded-circle" alt="...">
          Chi phí dịch vụ thấp nhất
        </div>
        <div class="col mb-4 shadow p-3 bg-white rounded gg1">
          <img src="img/dichvu1/dv5.png" class="rounded-circle" alt="...">
          Cam kết quyền lợi
        </div>
        <div class="col mb-4 shadow p-3 bg-white rounded">
          <img src="img/dichvu1/dv6.png" class="rounded-circle" alt="...">
          Sản phẩm phù hợp túi tiền
        </div>
        </div>
      </div>
      </div> 

    <!-- Footer  jsboostrap icon-->
    <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    
    </body>
</html>
