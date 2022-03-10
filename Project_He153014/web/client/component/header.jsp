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
          <li class="nav-item active">
            <a class="nav-link" href="/Project_He153014/home"
              >Trang Chủ <span class="sr-only">(current)</span></a
            >
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/Project_He153014/gioithieu">Giới Thiệu</a>
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
              Khu Vực BĐS
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Tất cả</a>
              <a class="dropdown-item" href="#">Can Lâm</a>
              <a class="dropdown-item" href="#">Diên Khánh</a>
              <a class="dropdown-item" href="#">Khánh Vĩnh</a>
              <a class="dropdown-item" href="#">Nha Trang</a>
              <a class="dropdown-item" href="#">Cam Rang</a>
              <a class="dropdown-item" href="#">Khánh Sơn</a>
              <a class="dropdown-item" href="#">Ninh Hòa</a>
              <a class="dropdown-item" href="#">Vạn Ninh</a>
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
              <a class="dropdown-item" href="#">Tất cả</a>
              <a class="dropdown-item" href="#">Căn hộ</a>
              <a class="dropdown-item" href="#">Đất nền</a>
              <a class="dropdown-item" href="#">Nhà Phố</a>
              <a class="dropdown-item" href="#">Biệt thự</a>
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
