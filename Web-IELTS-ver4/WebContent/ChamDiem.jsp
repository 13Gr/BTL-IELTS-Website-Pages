<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>diem</title>
</head>
<body>
<%
String id = request.getParameter("id");    
String c1 = request.getParameter("c1");
String c2 = request.getParameter("c2");
String c3 = request.getParameter("c3");
String c4 = request.getParameter("c4");
String c5 = request.getParameter("c5");
String c6 = request.getParameter("c6");
String c7 = request.getParameter("c7");
String c8 = request.getParameter("c8");
String c9 = request.getParameter("c9");
String c10 = request.getParameter("c10");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltweb-group13",
        "root", "phucpro2193");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from dethi where id='" + id + "'");
int points=0;
while(rs.next()){
	
	if(rs.getString("c1").equals(c1)==true){
		points++;
	}
	if(rs.getString("c2").equals(c2)==true){
		points++;
	}
	if(rs.getString("c3").equals(c3)==true){
		points++;
	}
	if(rs.getString("c4").equals(c4)==true){
		points++;
	}
	if(rs.getString("c5").equals(c5)==true){
		points++;
	}
	if(rs.getString("c6").equals(c6)==true){
		points++;
	}
	if(rs.getString("c7").equals(c7)==true){
		points++;
	}
	if(rs.getString("c8").equals(c8)==true){
		points++;
	}
	if(rs.getString("c9").equals(c9)==true){
		points++;
	}
	if(rs.getString("c10").equals(c10)==true){
		points++;
	}
	
}	
%>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/ltweb-group13"
                           user="root"  password="phucpro2193"/>
 
     			<sql:query dataSource="${dbsource}" var="result">
         				   SELECT  * 
         				   from dethi  ;
         				  
               </sql:query>
	<section class="for-full-back color-dark padding-top">
	<div class="row">
	<div class="container">
		
			<div class=".col-md-4"></div>
			<div class=".col-md-4">
				<h1>DIEM CUA BAN LA</h1>
				<c:forEach var="row" items="${result.rows}">
				<tr>
					<!--<p>Tên bài thi: <input value="${row.tendethi}"/></p>
					//<p>GV: <input value ="${row.GV}"/></p> -->
					<p>Diem<input  value="<%=points%>" disabled/></p>
					
				</tr>
				</c:forEach>
			</div>
			<div class=".col-md-4"></div>
		</div>
	</div>
	</section>

	
</body>
</html>