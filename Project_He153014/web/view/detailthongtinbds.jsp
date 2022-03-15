<%-- 
    Document   : detailthongtinbds
    Created on : Mar 12, 2022, 9:31:02 PM
    Author     : 03623
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="model.Imgbds"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Thongtinbds"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../client/component/head.jsp" %>
        
        <% Thongtinbds thongtinbds = (Thongtinbds)request.getAttribute("thongtinbds");
            ArrayList<Imgbds> imgbds = (ArrayList<Imgbds>)request.getAttribute("imgbds");
            ArrayList<Thongtinbds> thongtinbdscungloai = (ArrayList<Thongtinbds>)request.getAttribute("thongtinbdscungloai");
            int index = 0;
            int index2= 1;
        %>
<!--        css-->
        <style>
            .container {
                margin-top: 100px;
                margin-bottom: 100px
            }

            .carousel-inner img {
                width: 100%;
                height: 100%
            }

            #custCarousel .carousel-indicators {
                position: static;
                margin-top: 20px
            }

            #custCarousel .carousel-indicators>li {
                width: 100px
            }

            #custCarousel .carousel-indicators li img {
                display: block;
                opacity: 0.5
            }

            #custCarousel .carousel-indicators li.active img {
                opacity: 1
            }

            #custCarousel .carousel-indicators li:hover img {
                opacity: 0.75
            }

            .carousel-item img {
                width: 80%
            }
            .anh img{
                height: 550px;
            }
            .anh2 img{
                height: 110px;
            }
            .chitiet2 img{
                width: 100%;
            }
            .chitiet{
                padding-right: 25px;
            }
            .chu1{
                font-size: 30px;
            }
        </style>
    </head>
    <body>
        <%@include file="../client/component/header.jsp" %>
        
        <div class="container" style="margin-top:30px">
        <div class="row">
<!--            thông tin chi tiết bds-->
            <div class="col-sm-8 chitiet shadow-none p-3 mb-5 bg-light rounded">
<!--img-->
                    <div class="container">
                          <div class="row">
                              <div class="col-md-12 ">
                                  <div id="custCarousel" class="carousel slide" data-ride="carousel" align="center">
                                      <!-- slides -->
                                      <div class="carousel-inner anh">
                                          
                                          <div class="carousel-item active"> <img src="../img/Avarbds/${requestScope.thongtinbds.imgavar}" alt="Hills"> </div>
                                          <%for (Imgbds i : imgbds) {%>
                                          <div class="carousel-item"> <img src="../img/Avarbds/<%=i.getImgbds()%>" alt="Hills"> </div>
                                              <%}%>
                                      </div> <!-- Left right --> 
                                      <a class="carousel-control-prev" href="#custCarousel" data-slide="prev"> <i class="bi bi-arrow-left-circle-fill" style="color: blue;font-size: 2rem;"></i> </a> <a class="carousel-control-next" href="#custCarousel" data-slide="next"> <i class="bi bi-arrow-right-circle-fill" style="color: blue; font-size: 2rem;"></i> </a> <!-- Thumbnails -->
                                      <ol class="carousel-indicators list-inline anh2">
                                          <li class="list-inline-item active"> <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#custCarousel"> <img src="../img/Avarbds/${requestScope.thongtinbds.imgavar}" class="img-fluid"> </a> </li>
                                          <%for(Imgbds i : imgbds){%>
                                          <li class="list-inline-item"> <a id="carousel-selector-1" data-slide-to="<%=index2%>" data-target="#custCarousel"> <img src="../img/Avarbds/<%=i.getImgbds()%>" class="img-fluid"> </a> </li>
                                          <%index2+=1;}%>
                                      </ol>
                                  </div>
                              </div>
                          </div>
                      </div>
<!--img-->  
                <c:set var="num" value="/admin"/>
                <c:if test="${sessionScope.account.vaitro.vaitro==num}">
                    <form action="../../Project_He153014/imgbds/insert" method="GET">
                        Thêm ảnh: <input type="text" name="img" placeholder="tên file ảnh"> <input type="submit" value="thêm">
                        <input type="text" name="idbds" value="${requestScope.thongtinbds.idbds}" style="display: none">
                    </form>
                </c:if>
                <br>
                <h1>${requestScope.thongtinbds.tenbds}</h1>
                <br><br>
                <p class="chu1">${requestScope.thongtinbds.thongtinbds}</p>
              </div>
<!--              các bds khác-->
          <div class="col-sm-4 shadow-none p-3 mb-5 bg-light rounded chitiet2">
              <h2>Các bất động sản tương tự</h2>
            <%for (Thongtinbds t : thongtinbdscungloai) {
                if(t.getIdbds()!=thongtinbds.getIdbds()&&index<3){
                    index +=1;%>
                    <div class="shadow-sm p-3 mb-5 bg-white rounded">
                    <a href="detail?thongtinbdsid=<%=t.getIdbds()%>" class="text-decoration-none">
                        <img src="../img/Avarbds/<%=t.getImgavar()%>" alt="">
                        <c:forEach var = "i" begin = "1" end = "5"><i class="bi bi-star-fill" style="color: #feba45"></i> </c:forEach>
                        
                        <h5><%=t.getTenbds()%></h5>
                        <p>Giá: <%=t.getGiachu()%>     <i class="bi bi-cash-coin" style="color: #49be25"></i></p>
                    </a>
                </div>
            <%}}%>
          </div>
          
        </div>
      </div>
        
        <%@include file="../client/component/footer_jsboostrap_icon.jsp" %>
    </body>
</html>
