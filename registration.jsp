<%@ page import ="java.sql.*" %>
<%
    String studid = request.getParameter("studid");    
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_school",
            "root", "");
    Statement st = con.createStatement();

    //ResultSet rs;
    int i = st.executeUpdate("INSERT INTO ust_members(StudentID_ust, first_name,  last_name, email, pass, phone) values ('" + studid + "','" + fname + "','" + lname + "','" + email + "','" + password + "', '" + phone + "')");
    
	if (i > 0) {
        response.sendRedirect("myaccount.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }
%>