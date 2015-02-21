
<html>
<head>
<%@ include file="header.jsp" %>
</head>
<body>

  <% if(null == session.getAttribute("userid")){ %>
<div id="wrap">

        <%@ include file="nav.jsp" %> 
       
       <div class="center_content">
       	<div class="left_content">
            <div class="title"><span class="title_icon"><img src="admin.png" alt="" title="" /></span>My account</div>
        
        	<div class="feat_prod_box_details">
            <p style="color: red">
             You entered an invalid Student Number or Password!
            </p><br><Br>
            
              	<div class="contact_form">
                <div class="form_subtitle">Login into your account</div>
                 <form action="login.jsp" method="post">          
                    <div class="form_row">
                    <label class="contact"><strong>Student ID:</strong></label>
                    <input type="text" class="contact_input"  name="StudentID"/>
                    </div>  


                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="password" class="contact_input" name="password" />
                    </div>                     


                    
                    <div class="form_row">
                    <input type="submit" class="register" value="Login" />
                    </div>   
                    
                  </form>     
                    
                </div>  
            
            </div>	
            <br><br><br><Br><br><br><br>
              

        <div class="clear"></div>
        </div><!--end of left content-->
        
        <%@ include file="rightcontent.jsp" %> 

       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@ include file="footer.jsp" %>

       <%} else { response.sendRedirect("index.jsp"); } %>

</body>
</html>