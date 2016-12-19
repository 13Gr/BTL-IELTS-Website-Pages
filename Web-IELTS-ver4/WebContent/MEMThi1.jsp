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
	<ul class="col-sm-2 nav nav-pills nav-stacked">
    
    
    <li><a href ="MEMLuyenTap.jsp">Luyện tập</a></li>
    <li class="active"><a href ="MEMLamBaiThi.jsp">Làm bài thi thử</a></li>
    <li><a href ="MEMUpFile.jsp">Upload File</a></li>
    <li ><a href="MEMShareTaiLieu.jsp" >Share Tài Liệu</a></li>
  </ul>
		</div>
	</div>
    <div class="col-sm-8">
      <div class="page-header">
        <h1>Kiểm tra<small><font color="red"> đề số 1: </font></small></h1>
      </div>

      <div>
            <input type="button" value="Start" onclick="start()" />
            <input type="button" value="Stop" onclick="stop()"/><br><br>
            <script >start()</script>
        </div>
        
        <div>
            <script >start()</script>
            <span id="m">90</span> :
            <span id="s">00</span><br><br>
        </div>

      <p>
        <iframe allowfullscreen="" frameborder="0" height="26" src="https://www.youtube.com/embed/upYlc1QcbFk?rel=0&amp;showinfo=0" width="420"></iframe>
      </p>
      
      	
        <iframe src="https://drive.google.com/file/d/0B8r9aQ-9E6rDMGNRRFlfTzlWXzg/preview" height="800" width="768"></iframe>
         
       
     	
     </div>
     	
	
      <div class="form-sheet-answer">
       <form action="MEMResult.jsp">  
		<div class="form-group form-group-sm">
		
			<h4 ><center>PHẦN TRẢ LỜI</center></h4>
			<h4><center>READING</center></h4>
      		<label class="col-sm-4 control-label" for="sm" name="c1">Câu 1:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm"name="c2">Câu 2:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c3">Câu 3:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c4">Câu 4:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm"
      		name="c5" >Câu 5:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c6" >Câu 6:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c7">Câu 7:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c7">Câu 8:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c9">Câu 9:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm" name="c10">Câu 10:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 11:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 12:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 13:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 14:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 15:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 16:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 17:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 18:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 19:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 20:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 21:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 22:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 23:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 24:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 25:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 26:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 27:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 28:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 29:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 30:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 31:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 32:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 33:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 34:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 35:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 36:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 37:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 38:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 39:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 40:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<h4><center>WRITING</center></h4>
    	<div>
    	<label class="col-sm-4 control-label" for="sm">Câu 1:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 2:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 3:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 4:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 5:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 6:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 7:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 8:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 9:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 10:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 11:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 12:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 13:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 14:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 15:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 16:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 17:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 18:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 19:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 20:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 21:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 22:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 23:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 24:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 25:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 26:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 27:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 28:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 29:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 30:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    	<div>
    		<label class="col-sm-4 control-label" for="sm">Câu 31:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 32:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 33:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 34:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 35:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 36:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 37:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 38:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 39:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div>
    	</div>
    	<div class="form-group form-group-sm">
      		<label class="col-sm-4 control-label" for="sm">Câu 40:</label>
      		<div class="col-sm-8">
        	<input class="form-control" type="text" id="sm"><br>
      		</div> 
    	</div>
    		<button class="btn btn-default"  type="submit" id="emc-submit" onclick="stop()">Submit Answers</button>
		</form>
		
	</div>

  </div>

  </div>
	<div class="col-sm-2"></div>
  </div>
</div>
	<footer class="margin-bottom:0px;margin-top:10px;">Copyright © luyenThiIELTS.com</footer>	
</body>
</html>
