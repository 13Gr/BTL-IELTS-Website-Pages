<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Luyen thi IELTS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
.thumb {
    width: 200px;
    height: 200px;
    background-color: #3e3e3e;
    background-image: none;
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
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
<a href="MEMHome.jsp">
<img align ="center" src="Image/cover.jpg" alt="logo 1" width="1348" height="300">
</a>
</div>
<div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>  Trang chủ</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
    <li><a href="MEMInfo.jsp"><%=session.getAttribute("username")%></a></li>
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
	    <li class="active"><a href="MEMShareTaiLieu.jsp" >Share Tài Liệu</a></li>
	    <li><a href="MEMGuiEmail.jsp">Gửi E-mail cho Admin</a></li>
  </ul>
		</div>
	</div>
    <div class="col-sm-8">
      <div class="page-header">
        <h1>Share tài liệu<small><font color="red"> đề số 1: Anh ngữ Việt Mỹ</font></small></h1>
      </div>
      <p>
        <iframe allowfullscreen="" frameborder="0" height="26" src="https://www.youtube.com/embed/A9zMNOnE8P0?rel=0&amp;showinfo=0" width="420"></iframe>
        
        <button type="button" class="btn btn-default btn-md" onclick="alert('Thêm thanh công')">
         <span class="glyphicon glyphicon-star" aria-hidden="true" ></span> Thêm vào yêu thích
        </button>
        <button type="button" class="btn btn-default btn-md" >
          <a href="C:\Users\Dan Pham\Pictures\Saved Pictures\Jersey0_11.jpg" download><span class="glyphicon glyphicon-download-alt" aria-hidden="true" ></span> Tải về</a>
        </button>
        
      </p >
        <iframe src="https://drive.google.com/file/d/0B8r9aQ-9E6rDaEdwSllqU010TmM/preview" style="height: 700px; width: 800px;" align="center"></iframe>
    </div>
    
  </div>

  </div>
	<div class="col-sm-2"></div>
  </div>
</div>
	<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>	
</body>
</html>
