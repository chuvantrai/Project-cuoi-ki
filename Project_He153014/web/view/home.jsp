<%-- 
    Document   : home
    Created on : Mar 1, 2022, 1:47:22 PM
    Author     : 03623
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        int index1= 0;
        %>
    

        <!-- style CSS File -->
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <!--Main JS File -->
        <script src="../js/main.js" type="text/javascript"></script>
        
        <!-- css bootstrap 4 -->
            <link
              rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous"
            />
    </head>
    <body>
        <!-- ======= Header ======= -->    
      <nav  class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd;">
      <a class="navbar-brand" href="#">LOGO</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="#"
              >Trang Chủ <span class="sr-only">(current)</span></a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Giới Thiệu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Tin Tức</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Tư Vấn/Hỗ Trợ</a>
          </li>
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Khu Vực
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>
<!--        <form class="form-inline my-2 my-lg-0">-->
           <%if(account == null){%>
               <button onclick="window.location.href='/Project_He153014/registered'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                Đăng ký
               </button>
               <button onclick="window.location.href='/Project_He153014/login'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                Đăng Nhập
               </button>
          <%}else{%>
               <button onclick="window.location.href='/Project_He153014/logout'" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">
                Đăng Xuất
               </button>
          <h5> Xin Chào ${sessionScope.account.displayname}</h5>
           <%}%>
      </div>
    </nav>
      
          <section class="pt-3 section1">
        <div class="container">
            <div class="row">
                <div class="col-6">
                  <h3 class="mb-3">Căn hộ </h3>
                </div>
                <div class="col-6 text-right">
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
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-4 mb-3" >
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
    
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
    
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
    
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="row">
    
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                      <a href="" class="card-link list-group-item-action">
                                        <div class="card ">
                                            <img class="img-fluid" alt="100%x280" src="img/nhatrang2.jpg">
                                            <div class="card-body">
                                                <h4 class="card-title" >#104.Bán nhà Ngọc Hiệp Nha Trang cách đường Hương Lộ Ngọc Hiệp 20m. 77 m2</h4>
                                                <p class="card-text">Giá: 2 tỷ 3 </p>
                                            </div>
                                        </div>
                                      </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
      
      
      
        
        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
        <!-- icon -->
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>
