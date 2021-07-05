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
					<a href="#"><img src="images/logo.png" title="logo" /></a>
				</div>
                                <%
                                    Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
                     session.setAttribute("User",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from user_registration where S_No='"+id+"' and Aadhar_ID='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("Aadhar_ID");
                                     String name1=rs.getString("U_Name");
                                     session.setAttribute("name1", name1);
                                    %>
				<div class="contact-info">
					<ul>
						<li>User Id :<%=id%>
                                                    <br>Aadhar ID :<%=care%></li>
                                                <li></li>
						<li>  An efficient hierarchy attribute based encryption scheme in cloud computing </li>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<ul id="topnav">
					
                                            <li><a href="User_Home.jsp">HOME</a></li>
				        <li>
				            <a href="User_Inbox.jsp">MESSAGES</a>
				        
				        </li>
				        <li>
				            <a href="Modify_Phr.jsp">MODIFY DETAILS</a>
				           
				        </li>
                                         <li>
				            <a href="Send_DNA.jsp">SEND DND REQUEST</a>
				           
				        </li>
                                           <li>
				            <a href="User_Modify.jsp">VIEW DETAILS</a>
				           
				        </li>
                                       
				        <li>
				            <a href="logout.jsp">LOGOUT </a>
				         
				        </li>
				       
        		
        		
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
							<div class="grids">
							<div class="grid box">
								<h4>ADD PHR DETAILS</h4>
                                                                <a href="User_Phr.jsp"><img src="images/phr.png" title="Emergency" style="height: 200px;" /></a>
							</div>
							<div class="grid box" >
								<h4>BOOK SERVICES</h4>
                                                                <a href="Services_Booking.jsp"><img src="images/booking.jpg" title="Provide" style="height: 200px;" /></a>
							</div>
                                                            <div class="grid box" >
								<h4> SEARCH HOSPITAL</h4>
                                                                <a href="Services_Booking1.jsp"><img src="images/secure.jpg" title="Provide" style="height: 200px;" /></a>
							</div>
							<div class="grid box">
								<h4>USER COUNSELING</h4>
                                                                <a href="User_Counsel.jsp"><img src="images/counsel.gif" title="Registration" style="height: 200px;"/></a>
							</div>
							<div class="grid box">
								<h4>SET USER PRIVACY</h4>
                                                                <a href="Add_Privacy.jsp"><img src="images/secure.jpg" title="Online_help" style="height: 200px;" /></a>
							</div>
                                                            <div class="grid box">
								<%
                                                                rs = db.Select("select * from emerency where aadhar_id='"+care+"'");
                                                                if(rs.next()) {
                                                                    
                                                                
                                                                %>
                                                                <h4>INACTIVE</h4>
                                                                <a href="inactive.jsp"><img src="images/Inactive.png" title="" style="height: 200px;" /></a>
                                                                <%
                                                                } else {
                                                                %>
                                                                <h4>EMERGENCY</h4>
                                                                
                                                                <a href="Emergency.jsp"><img src="images/siren.jpg" title="Online_help" style="height: 200px;" /></a>
							<%
                                                                }
                                                        %>
                                                            </div>
							
							<div class="clear"> </div>
						 </div>
						 <div class="clear"> </div>
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
  
		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
					<a href="#"><img src="images/logo1.png" title="logo" /></a>
				</div>
				<div class="right-content">
					<p>Healthy  &	 All Rights Reserved | Design By Wansoon</p>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
                    <%
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("User_Login.jsp");
                                    }
                                        %>
	</body>
</html>

