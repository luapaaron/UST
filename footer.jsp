 <div class="footer">
       	<div class="left_footer"><img src="logo.png" alt="" title=""  width="480px" height="101px"/></div>
        <div class="right_footer">
        <a href="index.jsp">HOME</a>
        <a href="about.jsp">ABOUT US</a>
        <a href="academics.jsp">ACADEMICS</a>
         <% if(null == session.getAttribute("userid")){ %>
        <a href="register.jsp">REGISTER</a>
        <% } %>
        <a href="contact.jsp">CONTACT US</a>
		</div>
		
		<div class="social">
		<ul>
		<li><a href="https://www.facebook.com/UST1611official"><img src="images/fb.png"></a></li>
		<li><a href="https://www.youtube.com/user/UST1611official"><img src="images/yt.png"></a></li>
		<li><a href="http://instagram.com/ust1611official"><img src="images/insta.png"></a></li>
		<li><a href="https://twitter.com/UST1611official"><img src="images/twitter.png"><a/></li>
		</ul>
		</div>
</div>