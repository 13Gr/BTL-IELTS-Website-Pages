<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Luyen thi IELTS</title>
  <meta charset="utf-8">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	img {
    width: 100%;
    height: auto;
}	


.login-card {
  padding: 40px;
  width: 400px;
  background-color: #F7F7F7;
  margin: 0 auto 10px;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
}

.login-card h1 {
  font-weight: 100;
  text-align: center;
  font-size: 2.3em;
}

.login-card input[type=button] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.login-card input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.login-card input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.login {
  text-align: center;
  font-size: 14px;
  font-family: 'Arial', sans-serif;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;
/* border-radius: 3px; */
/* -webkit-user-select: none;
  user-select: none; */
}

.login-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.login-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.login-card a {
  text-decoration: none;
  color: #666;
  font-weight: 100;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
}

.login-card a:hover {
  opacity: 1;
}

.login-help {
  width: 100%;
  text-align: center;
  font-size: 12px;
}
footer {
        padding: 0.2em;
        color: black;
        background-color:;
        clear: left;
        text-align: center;
        }
.radio{
padding: 0.6em
}
   </style>
</head>
 <body background="Image/bgr.jpg">
	<div>
		<a href="index.jsp">
		<img align ="center" src="Image/cover.jpg" alt="logo 2" width="1348" height="300">
		</a>
	</div>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="index.jsp">WebSite hỗ trợ thi IELTS</a>
		    </div>
		    <ul class="nav navbar-nav">
			      <li ><a href="index.jsp">Home</a></li>
			     
			      <li><a href="#">Giới thiệu</a></li>
				  <li><a href="#">Liên hệ</a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
			      <li><a href="MEMDangKy.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		    </ul>
	  	</div>
	</nav>
	  <div class="login-card">
		  <div class="panel panel-primary">
			  <div class="panel-heading" ><font size ="6">Log-in</font></div>
			  	<br>
			  	<div class="panel-body">
			    <form class="form-horizontal" method="post" action="CheckDangNhap.jsp">
				    <div class= "form-group ">
					    <div class="col-sm-10">
							<label >Username</label>
							    <input type="text" name="user" value="" id="user" placeholder="Username">
							<label >Password</label>
							    <input type="password" name="pass" value ="" size="30" id="pass" placeholder="Password">
							    <div class="radio">
							    <table class="table">
							    <tr>
							    	<td>
										<input style="pading: 10px;" type="radio" id="inlineradHocvien" value="member" name="userMA" checked="checked">Học Viên
									</td>
									<td>
										<input style="pading: 10px;" type="radio"  id="inlineradAdmin" value="admin" name="userMA">Admin
									</td>
								</tr>
								</table>
								</div>
								<input type="submit" id="btnLogin" name="login" class="login-submit btn btn-default" value="login" >
							    <div class="radio" style="padding: 15px;">
									<label ><input type="checkbox"> Remember Account</label>
								</div>
								<div class="login-help">
							    	<a href="MEMDangKy.jsp">Register</a>
							   </div>
				    	</div>
			  		</div>
		 		 </form>
			</div>
		</div>
	</div>

<div id="result">
</div>

<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>
  </body>
</html>
