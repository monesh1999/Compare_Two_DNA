<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
	<head>
		<title>Healthy  Care</title>
		
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
			        <li><a href="index.html">HOME</a></li>
				    
				        <li>
                                            <a href="User_Register.jsp">USER REGISTRATION</a>
				           
				        </li>
				        <li>
                                            <a href="User_Login.jsp">USER LOGIN</a>
				         
				        </li>
				       
        		
        		</div>	
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
                        <div class="content" >
                            <form action="register_user" method="post" onsubmit="return form_validation(true);">
                                 <center> <br><br><h4>USER REGISTRATION</h4><br>
                            <br>
                          
                                <table border="3">
                                    <tr><td> User Name</td><td>:</td><td><input type="text" value="" id="U_Name" name="U_Name" style="width: 204px;" required></td></tr>
                                    <tr><td>  PassWord</td><td>:</td><td><input type="password" value="" id="U_pass" name="U_Pass" style="width: 204px;" required></td></tr>
                                    <tr><td>  Aadhar Id</td><td>:</td><td><input type="text" value="" id="aid" maxlength="16" name="aadhar" style="width: 204px;" required pattern="[0-9]{16}" required title="Enter 16 digit number"></td></tr>
                                    <tr><td>  To mail</td><td>:</td><td><input type="text" value="" id="U_Adrr" name="U_Adrr" style="width: 204px;" required></td></tr>
                                    <tr><td>To Contact</td><td>:</td><td><input type="text" value="" id="U_Ph" name="U_Ph" style="width: 204px;" required></td></tr>
                                    <tr><td>Address</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="desc" name="desc" required></textarea></td></tr>
                                    <tr><td> Gender</td><td>:</td><td><input type="text" value="" id="gender" name="gender" style="width: 204px;" required></td></tr>
                                    <tr>
                                                <td>Qualification</td><td>:</td><td><select name="Quali" id="Quali" style="width: 204px;" >
                                                        <option>UG DEGREE</option>
                                                          <option>PG DEGREE</option>
                                                            <option>HIGHER SECONDARY</option>
                                                              <option>SSLC</option>
                                                               <option>FIRST-SSLC</option>
                                                                <option>NO</option>
                                                    </select></td>
                                        </tr>  
                                            <tr>
                                                <td>Profession </td><td>:</td><td><input type="text" value="" name="Prof" id="Prof" style="width: 204px;" required onchange="displayDate(this)"></td>
                                        </tr> 
              <select name="typ" id="typ" style="width: 209px"  hidden >
                                                     <option value="ddd">SELECT</option>
                                                     <option value="secure">SECURE USER</option>
                                                 <option value="secure">NON-SECURE</option>
                                                 </select>
                                                      
                                </table>
                                 <input type="Submit" value="Register">&nbsp;       
                                                                    <input type="Reset" value="Clear">
                                 </center>
                            
                            </form>
						 <div class="clear"> </div>
                                                
                                                 <script>
                                                     function form_validation()
                                                     {
                                                          var H_Name=document.getElementById("U_Name").value;
                                             
                        if(!H_Name.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid User Name Don't Use Numbers")
                                return false;
                            }
                    
                      
                             var Ph=document.getElementById("U_Ph").value;
                               if(!Ph.match(/^\d{10}$/))  
                                   {
                            alert("Invalid Phone Number")
                            return false;
                            }
                              var Mail=document.getElementById("U_Adrr").value;
                               var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;

    if (!filter.test(Mail)) {
    alert("Invalid Mail ID");
    return false;
    }
    return true;
                 
                                                     }
                                                     </script>
                                                               <%
                                String msg=(String)session.getAttribute("msg");
                                if(msg!=null)
                                {
                                    %>
                                    <script>
                                        var ss='<%=msg%>';
                                        alert(ss);
                                        </script>
                                    <%
                                    session.removeAttribute("msg");
                                }
                                %>
  
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

