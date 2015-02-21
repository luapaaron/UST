
<html>
<head>
<%@ include file="header.jsp" %>

<script>

  

document.addEventListener("DOMContentLoaded", function(event) { 
 document.getElementById("messagesoutput").innerHTML='<object style="width:470px; height:350px;" type="text/html" data="display_message.jsp" ></object>';
});

function sendtext(){

var message = document.getElementById("texthere").value;

  var data = {
        'message':message
    };
	
    document.getElementById("texthere").value = "";
 
    $.ajax({
        type: "POST",
        url: "send.jsp",
        data: data,
        success: function() {
			document.getElementById("messagesoutput").innerHTML='<object  style="width:470px; height:350px;"  type="text/html" data="display_message.jsp" ></object>';
        },
        error: function() {

           
        }
    });

}

</script>
</head>
<body>
  <% if(null != session.getAttribute("userid")){ %>
<div id="wrap">

       <%@ include file="nav.jsp" %> 
       
       
       <div class="center_content">
       	<div class="left_content">
           
      
<div id="messagesoutput" style="border: 2px solid black; width: 470px; height: 350px; ">

</div>
<input type="text" placeholder="Enter Text Here..." id="texthere" />
<button onclick="sendtext()">Send</button>
            

            
        <div class="clear"></div>
        </div><!--end of left content-->
        
         <%@ include file="rightcontent.jsp" %> 
       
       <div class="clear"></div>
       </div><!--end of center content-->
       
              
       <%@ include file="footer.jsp" %>

         <%} else { response.sendRedirect("index.jsp"); } %>

</body>
</html>