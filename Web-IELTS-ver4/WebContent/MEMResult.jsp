<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" mozdisallowselectionprint moznomarginboxes>
<head><title>Luyen thi IELTS</title>
  <meta charset="utf-8" >
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/viewer.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="js/viewer.js"></script>
  <style>
	  img {
    width: 100%;
    height: auto;
}
            span{border: solid 1px #ACACAC; padding: 2px;}
        </style>
        <script language="javascript">

            
            var m = null; // Phút
            var s = null; // Giây
            
            var timeout = null; // Timeout
            
            function start()
            {
                
                if (m === null)
                {
                    
                    m =90;
                    s =00;
                }
                if (s === -1){
                    m -= 1;
                    s = 59;
                }
                if (m === -1){
                    clearTimeout(timeout);
                    alert('Hết giờ');
                    return false;
                }

               
               
                document.getElementById('m').innerText = m.toString();
                document.getElementById('s').innerText = s.toString();
                timeout = setTimeout(function(){
                    s--;
                    start();
                }, 1000);
            }
            
            function stop(){
                clearTimeout(timeout);
            }
        </script>
  <style>
div.cities {
    background-color: blue;
    color: white;
    margin: 20px 0 20px 0;
    padding: 20px;
} 
.iframe {
    border-width: 2px;
    border-style: inset;
    border-color: initial;
    border-image: initial;
}
 .form-sheet-answer {
    position: fixed;
    right: 0;
    bottom: 0;
    height: 500px;
    overflow: scroll;
    background: #FEFFB6;
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
<div >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSite hỗ trợ thi IELTS</a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="MEMHome.jsp">Home</a></li>
      <!--<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul> -->
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="MEMInfo.jsp"><%=session.getAttribute("username")%></a></li>
    
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Tài khoản <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="MEMInfo.jsp">Thông tin học viên</a></li>
            <li><a href="#">Đổi mật khẩu</a></li>
            
            <li role="separator" class="divider"></li>
            <li><a href="index.jsp">Đăng xuất</a></li>
            
          </ul>
        </li>
    </ul>
  </div>
</nav>
</div>
<div class="container-fluid">
  <div class="row">
    <div class="col-sm-2">
		<div class="container">
Diem cua ban:0
<br><a href="MEMHome.jsp">Back</a>
