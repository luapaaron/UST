
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
            <div class="title"><span class="title_icon"><img src="bullet3.gif" alt="" title="" /></span>My account</div>
        
        	<div class="feat_prod_box_details">
            <p class="details">
             If you don't have any account yet, please register.
            </p><br><Br>
            
              	<div class="contact_form">
                <div class="form_subtitle">login into your account</div>
                  <form method="post" action="registration.jsp" name="register">        
                    <div class="form_row">
                    <label class="contact"><strong>Student No:</strong></label>
                    <input type="text" name="studid" class="contact_input" required="required" />
                    </div>  
					
					<div class="form_row">
                    <label class="contact"><strong>First Name:</strong></label>
                    <input type="text" name="fname" class="contact_input"  required="required" />
                    </div>   
					
					<div class="form_row">
                    <label class="contact"><strong>Last Name:</strong></label>
                    <input type="text" name="lname" class="contact_input"  required="required" />
                    </div> 


                    <div class="form_row">
                    <label class="contact"><strong>Password:</strong></label>
                    <input type="password" name="password" class="contact_input"  required="required" />
                    </div>                     

                   <div class="form_row">
                    <label class="contact"><strong>Email:</strong></label>
                    <input type="email" name="email" class="contact_input"  required="required" />
                    </div>


                    <div class="form_row">
                    <label class="contact"><strong>Phone:</strong></label>
                    <input type="number" name="phone" class="contact_input"  required="required" />
                    </div>
                                                    

                    <div class="form_row">
                        <div class="terms">
                        <input type="checkbox" name="terms" />
                        I agree to the <a href="#">terms &amp; conditions</a>                        </div>
                    </div> 

                    
                    <div class="form_row">
                    <input type="submit" class="register" value="register" />
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