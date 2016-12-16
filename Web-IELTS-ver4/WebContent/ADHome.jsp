<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head><title>Quản Trị Người Dùng</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <script src="js/angular.min.js"></script>
    
  <style>
img {
    width: 100%;
    height: auto;
}
body{
	background-color: #eee;
	 padding-top:50px;
}
.table-hover{
	background-color:lightblue;

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
	<div><img align ="center" src="Image/cover.jpg" alt="logo 1" width="1348" height="300"></div>
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
		
    <li class="active"><a href ="ADHome.jsp">Quản Lý User</a></li>
    <li><a href ="ADGuiMail.jsp">Gửi E-mail</a></li>
    <ul>
		</div>
	</div>
    <div class="container col-sm-8" ng-app="sortApp" ng-controller="mainController">
  <div class="page-header">
  <h1>Quản lý tài khoản</h1>
</div>
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search to Username" ng-model="searchName">
      </div>      
    </div>
  </form>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/web"
    user="root"  password="12345678"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from member
ORDER BY regdate ASC;
</sql:query>
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
      <td>
      </td>
       	<td>Tên
       	</td>
        <td>
        Email
        </td>
        <td>
        Thời gian gần nhất
        </td>
        <td>
        Xem thông tin
        </td>
        <td>
        	Gửi E-mail	
        </td>
        <td>Xóa 
        </td>
      </tr>
    </thead>
    </table>
    <table class="table table-hover">
    <tbody>
    <c:forEach var="row" items="${result.rows}">
      <td><label>
       	 <input type="checkbox" value="" id="select" checkboxid="tr" name="">
       	 </label>
   	 </td>
        <td><c:out value="${row.username}"/></td>
  		<td><c:out value="${row.email}"/></td>
  		<td><c:out value="${row.regdate}"/></td>
        <td><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></button></td>
        <td><button type="button" class="btn btn-info"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></button></td>
      	<td><a href="deleteDB.jsp?iduser=<c:out value="${row.iduser}"/>" type="button" class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
      </tr>
    </tbody>
	</c:forEach>
  </table>
  
</div>
	<div class="col-sm-2"></div>
  </div>
</div>
<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>
</body>
</html>

