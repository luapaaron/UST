
<%@ page import ="java.sql.*" %>
<%
    String message = request.getParameter("message");    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_school",
            "root", "");
    Statement st = con.createStatement();


    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO message(schoolid, message) values ('UST','" + message + "')");
	
		
   
%>

