       <div class="header">
       		         
        <div id='cssmenu'>
<ul>
   <li><a href='index.jsp'><span>Home</span></a></li>
   <li class='active has-sub'><a href='about.jsp'><span>About Us</span></a>
      <ul>
         <li><a href='m&v.jsp'><span>Mission & Vision</span></a></li>
		 <li><a href='admin.jsp'><span>Administrators</span></a></li>
      </ul>
   </li>
   <li><a href='admit.jsp'><span>Admision</span></a></li>
   <li><a href='academics.jsp'><span>Academics</span></a></li>
   
   <% if(null == session.getAttribute("userid")){ %>
   
   <li><a href='myaccount.jsp'><span>My Account</span></a></li>
   <li><a href='register.jsp'><span>Register</span></a></li>
   <li class='last'><a href='contact.jsp'><span>Contact</span></a></li>
   
   <% } else { %>
   
   <li><a href="contact.jsp">Contact</a></li>
             <li><a href="forum.jsp">Forum</a></li>
              <li><a href="logout.jsp">Logout</a></li>

            <% } %>
</ul>
</div>
</div>   