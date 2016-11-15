<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("user");    
    String pwd = request.getParameter("pass");
    String checkuser= request.getParameter("userMA");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/web-ielts-prac",
            "root", "123456789");
    Statement st = con.createStatement();
    ResultSet rs;
    
    if(checkuser.equals("member"))
    {
    	 rs = st.executeQuery("select * from member where username='" + username + "' and pass='" + pwd + "' "  );
 	    if (rs.next())
 	    {
 	    	String tinhtrang= rs.getString("valueMember");
 	    		if(tinhtrang.equals("1"))
 	    	{
 		        session.setAttribute("username", username);
 		       		response.sendRedirect("MEMHome.jsp");
 	    	}
 	    		else out.println("Tai khoan da bi khoa");
 	    }
 	   else out.println("Invalid password <a href='index.jsp'>try again</a>"); 
    }
 	 if(checkuser.equals("admin"))
    {
	    rs = st.executeQuery("select * from admin where adname='" + username + "' and pass='" + pwd + "' " );
	    if (rs.next())
	    	{
		        session.setAttribute("username", username);
					response.sendRedirect("ADHome.jsp");
	    	}
	    else out.println("Invalid password <a href='index.jsp'>try again</a>"); 
    }
   	else out.println("Tai khoan khong ton tai");
    
%>