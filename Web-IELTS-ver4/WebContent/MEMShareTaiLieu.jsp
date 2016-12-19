<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head><title>Các Tài Liệu Đã Share</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/fileinput.css" media="all" rel="stylesheet" type="text/css" />
   <script src="js/fileinput_locale_es.js" type="text/javascript"></script>
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js" type="text/javascript"></script>
  <style>
	  img {
    width: 100%;
    height: auto;
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
  <div class="col-sm-10">
  <form method="post" enctype="multipart/form-data" action="Sharetailieu">
  	<p><label>Name File: <input type="text" id="title" name="title" placeholder="Enter name of file"></label></p>
  	<div>        
        <label>Readling:</label>
        <input id="file-es" name="file-es" type="file" multiple> <br>
        <a ><button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span> Share</button></a>
        </div>
        </form>
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://node179326-webgroup13.jelastic.servint.net/ltweb-group13"
    user="root"  password="UJ95Q5bY1l"/>
<sql:query dataSource="${snapshot}" var="result">
SELECT * from sharefile
ORDER BY regdate ASC;
</sql:query>
 <b><h3>Các tài liệu đã share </h3></b><br>
<c:forEach var="row" items="${result.rows}">
 
<table>
<div class="media">
<tr>
	<td>
	  <a class="pull-left" href="">
	    <img class="media-object" src="Image\share listen.PNG" alt="left" >
	  </a>
  	</td>
  <td>
  	<h3><a href="<c:out value="${row.files}"/>" ><c:out value="${row.files}"/> </a></h3><br>
  Người gửi:<c:out value="${row.username}"/>
  </td>
  
  </tr> 
  <tr>
  <p><a href="MEMShareTaiLieuNghe1.jsp?id=<c:out value="${row.id}"/>" class="btn btn-primary btn-sm" role="button">Xem</a> 
    <a href="#" class="btn btn-default btn-sm" role="button"><span class="glyphicon glyphicon-star"></span>Thêm vào yêu thích</a> 
              <a> <button type="button" class="btn btn-default btn-sm" onclick="downloadAll(window.links)" >
          <span class="glyphicon glyphicon-download-alt" aria-hidden="true"   ></span> Tải về </button></a>
        </p>  
  </tr>
  </div>
    </table>
    </c:forEach>
    <div class="col-sm-12" >
      <nav aria-label="..." align="center">
        <ul class="pagination">
        <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
          ...
        </ul>
      </nav>
    </div>
  </div>

  </div>
	<div class="col-sm-2"></div>
  </div>
<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>		
</body>
<script>
$('#file-es').fileinput({
    language: 'es',
    uploadUrl: '/file-upload-batch/2',
    allowedFileExtensions : ['mp3'],
	uploadUrl: "#",
	uploadAsync: true,
	previewFileIcon: '<i class="fa fa-file"></i>',
	allowedPreviewTypes: null, 
	previewFileIconSettings: {
    'docx': '<i class="fa fa-file-word-o text-primary"></i>',
    'xlsx': '<i class="fa fa-file-excel-o text-success"></i>',
    'pptx': '<i class="fa fa-file-powerpoint-o text-danger"></i>',
    'jpg': '<i class="fa fa-file-photo-o text-warning"></i>',
    'pdf': '<i class="fa fa-file-pdf-o text-danger"></i>',
    'zip': '<i class="fa fa-file-archive-o text-muted"></i>',
}

});
var links = ['Sharetailieu/upload/<c:out value='${row.files}'/>'];

function downloadAll(urls) {
	var link = document.createElement('a');
	link.setAttribute('download', "sdjfh");
		link.style.display = 'none';

		document.body.appendChild(link);

		for (var i = 0; i < urls.length; i++) {
			link.setAttribute('href', urls[i]);
			link.click();
		}
		document.body.removeChild(link);
	}

</script>
</html>
