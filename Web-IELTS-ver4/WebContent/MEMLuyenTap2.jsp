<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Chọn Kỹ Năng Luyện Tập</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
	  img {
    width: 100%;
    height: auto;
}
div.cities {
    background-color: blue;
    color: white;
    margin: 20px 0 20px 0;
    padding: 20px;
} 
footer {
        padding: 0.2em;
        color: black;
        background-color:;
        clear: left;
        text-align: center;
        }
</style>
</head>
<body background="Image/bgr.jpg">
<div>
<a href="Login-ThanhCong.jsp">
<img align ="center" src=" Image/cover.jpg" alt="logo 1" width="1348" height="300">
</a>
</div>
<div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>  Trang chủ</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
     <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span>  Tài khoản <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="MEMInfo.jsp"><span class="glyphicon glyphicon-user"></span>Thông tin người dùng</a></li>
            
            <li><a href="MEMDoiMatKhau.jsp"><span class="glyphicon glyphicon-refresh"></span>Đổi mật khẩu</a></li>
            
            <li role="separator" class="divider"></li>
            <li><a href="index.jsp"><span class="glyphicon glyphicon-log-out"></span>Đăng xuất</a></li>
            
          </ul>
    </ul>
  </div>
</nav>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-2">
		<div class="container">
	<ul class="col-sm-2 nav nav-pills nav-stacked">
    
    
    <li><a href ="MEMLuyenTap.jsp">Luyện tập</a></li>
    <li><a href ="MEMLamBaiThi.jsp">Làm bài thi thử</a></li>
    <li><a href ="MEMUpFile.jsp">Upload File</a></li>
    <li><a href="MEMShareTaiLieu.jsp" >Share Tài Liệu</a></li>
    
    <li><a href="MEMGuiEmail.jsp">Gửi E-mail cho Admin</a></li>
  </ul>
		</div>
	</div>
    
	<form>
	
		
		<div class="col-sm-8">
  <form>
  <fieldset>
    <h1>Chọn Bài Làm</h1>
    <ul class="nav nav-tabs">
      <li role="presentation" ><a href="MEMLuyenTap.jsp">Reading</a></li>
      <li role="presentation" class="active"><a href="MEMLuyenTap2.jsp">Listening</a></li>
    </ul>
    <div class="panel panel-default"></div>
  <!-- Default panel contents -->
  

  <!-- Table -->
  <table class="table">
    <tr>
      <td><b>Tên bài</b></td>
      <td><b>Người Đăng</b></td>
    </tr>
    <tr>
      <td><a href="Lambaithi-listening-1.jsp" >IELTS Listening Sample 1</td>
      <td>pcd</td>
    </tr>
    <tr>
      <td><a href="#" >IELTS Listening Sample 2</td>
      <td>pcd</td>
    </tr>
  </table>

</div>
<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>		
</body>
</html>
