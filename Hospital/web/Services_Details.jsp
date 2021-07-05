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
		<link href='http://fonts.googleapis.com/css?family=Noto+Sans' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" type="image/x-icon" href="images/pageicon.png" />
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<link rel="stylesheet" href="css/camera.css" type="text/css" media="all" />
		<meta name="keywords" content="Healthy iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
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
                                    
                                    %>
				<div class="contact-info">
					<ul>
						<li>User Id :<%=id%>
                                                    <br>User Name :<%=care%></li>
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
                                            <a href="Services_Booking.jsp">SERVICES</a>
				        
				        </li>
				      
                                           <li>
                                            <a href="Services_Details.jsp">VIEW SERVICES</a>
				        
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
                            <center>
                                <br>
                                <br>
                                SERVICE DETAILS<br><br><table border="2">
                            <%
                                  String Query="Select * from booking_service where U_ID='"+id+"'";
                                  ResultSet rd=db.Select(Query);
                                  if(rd.next())
                                  {
                                      %><tr><th>S_NO</th><th>U_ID</th><th>USER NAME</th><th>HOSPITAL ID</th><th>PROVIDER ID</th><th>DELETE</th></tr>
                                     
                                      <tr><td><%=rd.getInt("S_No")%></td>
                                      <td><%=rd.getInt("U_ID")%></td>
                                       <td><%=rd.getString("U_Name")%></td>
                                      <td><%=rd.getInt("H_ID")%></td>
                                          <td><%=rd.getInt("P_ID")%></td>
                                      <td><a href="Delete_Service.jsp?id1=<%=rd.getInt("S_No")%>">Delete</a></td></tr>
                                          <%
                                  }
                                  else
                                  {%>
                                     <td>Details Not Found</td></tr> 
                                <% }
                                        %>
                                </table></center>
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

