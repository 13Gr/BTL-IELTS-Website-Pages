<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Gửi E-mail</title>
      
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
<a href="ADHome.jsp">
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
     <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span>  Tài khoản <span class="caret"></span></a>
          <ul class="dropdown-menu">
            
            <li><a href="DoiMatKhau.jsp"><span class="glyphicon glyphicon-refresh"></span>Đổi mật khẩu</a></li>
            
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
		
    <li><a href ="ADHome.jsp">Quản Lý User</a></li>   
    <li class="active"><a href ="ADGuiMail.jsp">Soạn Tin</a></li>
    <ul>
		</div>
	</div>

    <div class="col-sm-8" align="justify">
    <div class="page-header">
  <h1>Gửi tin nhắn <small></small></h1>
</div>
	     <form class="form-horizontal">
      <div class="form-group">
          <label class="col-sm-2 control-label">Người nhận</label>
          <div class="col-sm-6">
          <input class="form-control" id="focusedInput" type="text" value="" placeholder="nhập tên ai đó..">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-sm-2 control-label">Chủ đề:</label>
      <div class="col-sm-10">
        <input class="form-control" id="disabledInput" type="text" placeholder="tên một chủ đề">
      </div>
    </div>
    
    <div class="form-group">
      <label class="col-sm-2 control-label" for="inputError">Nội dung:</label>
      <div class="col-sm-10 col-xs-6">
        <textarea class="form-control" id="disabledInput" type="text" placeholder="nhập nội dung..." rows="5" cols="20"></textarea>
        
      </div>
    </div>
      <p align="right">
     <button type="button" class="btn btn-primary btn-lg">Send</button>
     </p>
  </form>

  <!-- Container (Contact Section) -->


    </div>








	<div class="col-sm-2"></div>
  </div>
</div>
<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>		
</body>
</html>
ss
