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
                  <script>
                      function Validate_Data()
                      {
                        var H_Name=document.getElementById("H_Name").value;
                                             
                        //if(!H_Name.match(/^[a-zA-Z]+$/)
                           // {
                                //alert("Invalid Health care Name Don't Use Space")
                                //return false;
                            //}
                       var P_Name=document.getElementById("P_Name").value;
                       //if(!P_Name.match(/^[a-zA-Z]+$/))
                           // {
                           // alert("Invalid Provider Name Don't Use Space")
                            //return false;
                            //}
                               var UP_Name=document.getElementById("UP_Name").value;
                              // if(!UP_Name.match(/^[a-zA-Z]+$/))
                            //{
                           // alert("Invalid User Name Don't Use Space")
                            //return false;
                           // }
               
                             var Ph=document.getElementById("Ph").value;
                               if(!Ph.match(/^\d{10}$/))  
                                   {
                            alert("Invalid Phone Number")
                            return false;
                            }
                              var Mail=document.getElementById("Mail").value;
                               var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z]{2,4})+$/;

    if (!filter.test(Mail)) {
    alert("Invalid Mail ID");
    return false;
    }
                               var year=document.getElementById("year").value;
                                if(!year.match(/^\d{4}$/))  
                                   {
                            alert("Invalid Year")
                            return false;
                            }
                            return true;
                      }
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
                                            <a href="Online_Help.jsp">DOCTOR LOGIN</a>
				         
				        </li>
				       
        		
        		</div>	
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                            <form action="ProviderReg" enctype="multipart/form-data" method="post" onsubmit="return Validate_Data(true)">
                             <center> <br><br><h4>PROVIDER REGISTRATION</h4><br>
                            <br>
                      
                                <table border="3">
                                    <tr><td> Health Care Name</td><td>:</td><td><input type="text" value="" id="H_Name" name="H_Name" style="width: 204px;" required></td></tr>
                                    <tr><td> Provider Name</td><td>:</td><td><input type="text" value="" id="P_Name" name="P_Name" style="width: 204px;" required></td></tr>
                                    <tr><td> User Name</td><td>:</td><td><input type="text" value="" id="UP_Name" name="UP_Name" style="width: 204px;" required></td></tr>
                                    <tr><td>  PassWord</td><td>:</td><td><input type="password" value="" id="P_pass" name="P_Pass" style="width: 204px;"required></td></tr>
                                     <tr><td>  Address</td><td>:</td><td><textarea value="" id="P_Adrr" name="P_Adrr" style="width: 204px; height: 76px;"required></textarea></td></tr>
                                        
                                          <tr><td>  Contact Number </td><td>:</td><td><input type="text" value="" id="Ph" name="Ph" style="width: 204px;" required></td></tr>
                                          <tr><td>  Mail_Id </td><td>:</td><td><input type="text" value="" id="Mail" name="Mail" style="width: 204px;" required></td></tr>
                                             <tr><td>  Year Of Starting </td><td>:</td><td><input type="text" value="" id="year" name="year" style="width: 204px;" required ></td></tr>
                                             <tr><td>  Profile Image </td><td>:</td><td><input type="file" value="" id="Image" name="Image" style="width: 204px;" required></td></tr>
                                     
                                </table>
                                 
                            <br><br>
                                         <input type="submit" value="Register" >   </center>
                            </form>
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

