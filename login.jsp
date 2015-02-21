<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("StudentID");    
    String pwd = request.getParameter("password");
	
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_school",
            "root", "");
    Statement st = con.createStatement();
	
    ResultSet rs;
    rs = st.executeQuery("select * from ust_members where StudentID_ust='" + userid + "' and pass='" + pwd + "'");

    if (rs.next()) {
        session.setAttribute("userid", userid);
        response.sendRedirect("index.jsp");
    } else {
          response.sendRedirect("myaccount2.jsp");
    }
%>