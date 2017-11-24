<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
      <div class="col-xl-2 col-lg-2 col-md-12 col-sm-12">
        <nav class="navbar navbar-expand-sm">
          <ul class="nav">

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                系统模块
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="java:void()">资源管理</a>
                <a class="dropdown-item" href="java:void()">角色管理</a>
                <a class="dropdown-item" href="java:void()">权限管理</a>
              </div>
            </li>

            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="java:void()" id="navbardrop" data-toggle="dropdown">
                年级模块
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="java:void()"  target="myifram">年级添加</a>
                <a class="dropdown-item" href="java:void()" target="myifram">年级列表</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="java:void()" id="navbardrop" data-toggle="dropdown">
                课程模块
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="java:void()"  target="myifram">课程添加</a>
                <a class="dropdown-item" href="java:void()" target="myifram">课程列表</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="java:void()" id="navbardrop" data-toggle="dropdown">
                成绩模块
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="java:void()"  target="myifram">成绩添加</a>
                <a class="dropdown-item" href="java:void()" target="myifram">成绩列表</a>
              </div>
            </li>
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="java:void()" id="navbardrop" data-toggle="dropdown">
                学生模块
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="to_save"  target="myifram">学生添加</a>
                <a class="dropdown-item" href="to_list" target="myifram">学生列表</a>
              </div>
            </li>
          </ul>
        </nav>
      </div>
      <div class="h-100 col-xl-10 col-lg-10 col-md-12 col-sm-12">
        <iframe src="to_list" name="myifram" scrolling="0" frameborder="0" class="h-100 w-100" ></iframe>
      </div>
    </div>
  </div>
</body>
</html>