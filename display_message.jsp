
<%@ page import ="java.sql.*" %>
<%
    
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_school",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from message ORDER BY id DESC");

	 while(rs.next()) { %>
	 
              <%= rs.getString("schoolid") %>
				<%  out.println(":"); %>
			  <%= rs.getString("message") %> 
			 
			 <%  out.println("<br/>"); %>
          
	<%} %>


