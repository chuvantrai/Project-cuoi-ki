<%-- 
    Document   : header
    Created on : Mar 9, 2022, 9:57:54 AM
    Author     : 03623
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- navbar-->
      <nav  class="navbar navbar-expand-lg navbar-light" style="background-color:#e3f2fd;">
      <a class="navbar-brand" href="/Project_He153014/home">CNV</a>
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
          <li class="nav-item ">
            <a class="nav-link" href="/Project_He153014/home">Trang Chủ </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/Project_He153014/gioithieu">Giới Thiệu</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../../Project_He153014/tintuc/tatca">Tin Tức</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../../Project_He153014/yeucau">Tư Vấn/Hỗ Trợ</a>
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
              Khu Vực BĐS
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=&locGia=">Tất cả</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23canlam&locGia=">Can Lâm</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23diemkhanh&locGia=">Diên Khánh</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23khanhvinh&locGia=">Khánh Vĩnh</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23nhatrang&locGia=">Nha Trang</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23camrang&locGia=">Cam Rang</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23ninhhoa&locGia=">Ninh Hòa</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=%23vanninh&locGia=">Vạn Ninh</a>
              <a class="dropdown-item" href="#">Khu Vực Khác</a>
            </div>
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
              Loại BĐS
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=&thutu=moinhat&Khuvucbds=&locGia=">Tất cả</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=%23canho&thutu=moinhat&Khuvucbds=&locGia=">Căn hộ</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=%23datnen&thutu=moinhat&Khuvucbds=&locGia=">Đất nền</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=%23nhapho&thutu=moinhat&Khuvucbds=&locGia=">Nhà Phố</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/tatca?Loaibds=%23bietthu&thutu=moinhat&Khuvucbds=&locGia=">Biệt thự</a>
            </div>
          </li>
          <c:set var="num" value="/admin"/>
          <c:if test="${sessionScope.account.vaitro.vaitro==num}">
          <li class="nav-item dropdown">
              <a style="color: blue"
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdownMenuLink"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
                Quyền Admin
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="../../Project_He153014/listyeucau">Yêu cầu từ khách hàng</a>
              <a class="dropdown-item" href="../../Project_He153014/thongtinbds/insert">Thêm bất động sản</a>
              <a class="dropdown-item" href="../../Project_He153014/tintuc/insert">Thêm tin tức</a>
            </div>
          </li>
          </c:if>
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

      
<!--    icon sđt báo giá  -->
      <div
      class="topcontact"
      style="
        position: fixed;
        bottom:66px;
        left: 8px;
        padding: 10px 15px 10px 15px;
        color: #fe9d15;
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;">
      <b><a data-bs-toggle="modal"  data-bs-target="#exampleModal" style="color: #000">
          <span class="fa fa-comment-dots" aria-hidden="true"></span>
          <span class="text" style="color: #cc3300;"><i class="bi bi-telephone-fill"></i> 𝟎𝟖𝟕𝟗.𝟖𝟒𝟗.𝟖𝟖𝟖</span>
        </a></b>
    </div>
    <div
      class="topcontact"
      style="
        position: fixed;
        bottom: 12px;
        left: 8px;
        padding: 10px 15px 10px 15px;
        
        transition: all ease 0.4s;
        background: #abdbe3;
        border-radius: 40px;
        z-index: 999;
        font-size: 17px;">
      <b><a data-bs-toggle="modal"  data-bs-target="#exampleModal" style="color: #000" href="../../Project_He153014/yeucau">
          <span class="fa fa-comment-dots" aria-hidden="true"></span>
          <span class="text" style="color: #0066ff;"><i class="bi bi-chat-left-dots-fill"></i> Nhận báo giá</span>
        </a></b>
    </div>