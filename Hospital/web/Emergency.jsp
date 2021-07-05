<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
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
                            <center><br><br><h1 style="color: green"></h1> </center>
                          <form action ="emergency1.jsp" method="post">
            <table border="2">
                  <th><tr><td>S_No</td> <td>Hospital Name&nbsp;&nbsp;</td> &nbsp;&nbsp;<td>Doctor Name</td> <td>Department</td></tr></th> 
                            <%
DbConnection db=new DbConnection();
System.out.println("SELECT * FROM provider_doctors inner join booking_service on booking_service.D_ID=provider_doctors.S_No and booking_service.U_Name  ='"+session.getAttribute("User")+"'");
ResultSet rs=db.Select("SELECT * FROM provider_doctors inner join booking_service on booking_service.D_ID=provider_doctors.S_No and booking_service.U_Name  ='"+session.getAttribute("User")+"'");

while(rs.next())
{%>

<center>
      
      
    <tr><td><%=rs.getInt("S_No")%></td> &nbsp;&nbsp;
    <td><%=rs.getString("Care_Name")%></td>&nbsp;&nbsp;
    <td><%=rs.getString("D_Name")%></td> &nbsp;&nbsp;
    <td><%=rs.getString("D_Details")%></td> &nbsp;&nbsp;    
    <td><input type="checkbox" name="did" value="<%=rs.getString("D_Name")%>"></td>
    </tr>
              <%
    
}
//response.sendRedirect("User_Home.jsp");
%>	
</table></center>
    </br>
    </br>
    
        <input type="Submit" value="OK" onclick="">
    </form>
              
						 <div class="clear"> </div>
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
					<a href="index.html"><img src="images/logo1.png" title="logo" /></a>
				</div>
				<div class="right-content">
					<p>Healthy  &	 All Rights Reserved | Design By Wansoon </p>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
	</body>
</html>
<%--int i=db.Insert("insert into emerency values('0','"+session.getAttribute("User")+"','"+session.getAttribute("name1")+"','No')");
session.setAttribute("msg", "Emergency Alert Active");
--%>
