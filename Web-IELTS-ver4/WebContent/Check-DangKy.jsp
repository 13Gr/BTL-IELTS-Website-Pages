<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String userM = request.getParameter("username");    
    String pwdM = request.getParameter("password");
    String mname = request.getParameter("mname");
    String checkgioitinh= request.getParameter("gioitinh");
   	String birthday = request.getParameter("birthday");
    SimpleDateFormat formater = new SimpleDateFormat("yyyy-mm-dd");
    java.util.Date date = formater.parse(birthday);
    java.sql.Date convertDate = new java.sql.Date( date.getTime() );
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://node179326-webgroup13.jelastic.servint.net/ltweb-group13",
            "root", "UJ95Q5bY1l");
    Statement st = con.createStatement();
    //ResultSet rs;
    if(checkgioitinh.equals("nam")){
   int i=st.executeUpdate
    ("insert into member(email, username, pass, mname,tinhtrang,valueMember,ngaysinh,gioitinh,regdate) values ('" + email + "','" + userM + "', '" + pwdM + "','" + mname + "','Đang hoạt động','1' ,'"+convertDate+"','1',CURDATE())");
    if (i > 0) {
        response.sendRedirect("wellcome.jsp");
   				} else {
        response.sendRedirect("index.jsp");
  						}
    }
    if(checkgioitinh.equals("nu")){
   int i=st.executeUpdate
    ("insert into member(email, username, pass, mname,tinhtrang,valueMember,ngaysinh,gioitinh,regdate) values ('" + email + "','" + userM + "', '" + pwdM + "','" + mname + "','Đang hoạt động','1' ,'"+convertDate+"','0',CURDATE())");
    if (i > 0) {
        response.sendRedirect("wellcome.jsp");
   				} else {
        response.sendRedirect("index.jsp");
  						}
    }
%>