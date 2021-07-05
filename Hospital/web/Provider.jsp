<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>Healthy Care</title>
		
		<link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/camera.css" type="text/css" media="all" />
		<meta name="keywords" content="Healthy iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link rel="stylesheet" href="css/responsiveslides.css">
		
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" title="logo" /></a>
				</div>
				<div class="contact-info">
					<ul>
						<li></li>
						<li></li>
						<li>  An efficient hierarchy attribute based encryption scheme in cloud computing </li>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<ul id="topnav">
					<div class="wrap">
			        <li><a href="index.html">Home</a></li>
				        <li>
				            <a href="admin.jsp">ADMIN</a>
				        
				        </li>
				        <li>
				            <a href="User_Login.jsp">USER LOGIN</a>
				           
				        </li>
				        <li>
				            <a href="Provider.jsp">PROVIDER LOGIN</a>
				         
				        </li>
				       
        		
        		</div>	
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                              <form action="Provider_Login" method="post" onsubmit="JavaScript:return AdminValidate(true);">
                                  <center> <br>  <br><br> <h2>PROVIDER LOGIN PAGE</h2> <br><br>
                                  <br><table border="5">
                                          
                    <tr><td> <font color="red"> USER NAME :</td><td><input type="text" value="" id="A_Name" name="A_Name"></td></tr>
                    <tr></tr><tr></tr>
                    <tr><td><font color="red">PASSWORD :</td><td><input type="password" value="" id="A_Pass" name="A_Pass"></td></tr>
                
                    </table>
                                      <br><br>
                                      <input type="submit" value="Submit"></center>
                                        </form>
                            	 <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                       session.invalidate();
                  }
                
                 
                  %>
                                        <script >
        function AdminValidate()
        {
            var ss = document.getElementById("A_Name").value;
            if (ss === "")
            {
                alert("User Name Can't be Empty");
                document.getElementById("A_Name").value.focus;
                return false;
            }
            var ss1 = document.getElementById("A_Pass").value;
            if (ss1 === "")
            {
                alert("Password Can't be Empty");
                return false;
            }
            return true;
        }
                                </script>
                                  
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
					<a href="index.html"><img src="images/logo1.png" title="logo" /></a>
				</div>
				<div class="right-content">
					<p>Healthy  &	 All Rights Reserved | Design By Wansoon</p>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
	</body>
</html>

