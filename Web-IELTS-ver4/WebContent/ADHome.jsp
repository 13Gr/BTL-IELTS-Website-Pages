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
<script>
angular.module('sortApp', [])

.controller('mainController', function($scope) {
  $scope.sortType     = 'name'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.searchName   = '';     // set the default search/filter term
  
  // create the list of sushi rolls 
  $scope.user = [
    { name: 'Cali Roll', username: '14110152@student.hcmute.edu.vn', date:'03/03/1996' },
    { name: 'Philly', username: '14110002@student.hcmute.edu.vn', date: '03/01/2004 '},
    { name: 'Tiger', username: '14110016@student.hcmute.edu.vn', date: '04/03/2007 '},
    { name: 'Rainbow', username: '14110010	@student.hcmute.edu.vn', date: '05/05/2006 '}
  ];
  
});
</script>
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
		
    <li class="active"><a href ="ADHome.jsp">Quản Lý User</a></li>
    <li><a href ="tinNhan.jsp">Upload Đề Thi</a></li>
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

  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
          <a href="" ng-click="sortType = 'name'; sortReverse = !sortReverse">
            Name
            <span ng-show="sortType == 'name' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="" ng-click="sortType = 'username'; sortReverse = !sortReverse">
          Email
            <span ng-show="sortType == 'username' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'username' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="" ng-click="sortType = 'date'; sortReverse = !sortReverse">
          Last Time
            <span ng-show="sortType == 'date' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'date' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
        Xem Thông Tin
        </td>
        <td>
        	Gửi E-mail
        	
        </td>
        <td>Xóa 
        </td>
      </tr>
    </thead>
    <table class="table table-hover">
    <tbody>
      <tr ng-repeat="roll in user | orderBy:sortType:sortReverse | filter:searchName">
      <td><label>
       	 <input type="checkbox" value="" id="select" checkboxid="tr" name="">
       	 </label>
   	 </td>
        <td>{{ roll.name }}</td>
        <td>{{ roll.username }}</td>
        <td>{{ roll.date }}</td>
        <td><button type="button" class="btn btn-success"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></button></td>
        <td><button type="button" class="btn btn-info"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></button></td>
      	<td><button type="button" class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button></td>
      </tr>
    </tbody>
    <button class="glyphicon glyphicon-trash" id="bt_xoa" style="width: 40px ;height: 25px; margin-top: 10px;margin-left: 10px;" title="Xóa">
    </table>
    
  </table>
  
</div>
	<div class="col-sm-2"></div>
  </div>
</div>
<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>
</body>
</html>

