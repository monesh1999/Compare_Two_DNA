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
                                                    <br>Aadhar_ID :<%=care%></li>
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
                            <form action="Add_Booking" method="post">
                            <%
                                        String idf=(String)session.getAttribute("B_id");
                               
                                        String Hospital=request.getParameter("Hospital");
                                     
                                            String Doctor=request.getParameter("Doctor");
                                  
                                            String Service=request.getParameter("Service");
                                            System.out.println(idf);
                                        System.out.println(Hospital);
                                         System.out.println(Doctor);
                                          System.out.println(Service);
                                        if(idf!=null && Hospital!=null && Doctor!=null &&Service!=null)
                                        {
                                        // int S_Id=Integer.parseInt(Service);
                                               int D_Id=Integer.parseInt(Doctor);
                                               //   int H_Id=Integer.parseInt(Hospital);
                                                           int B_Id=Integer.parseInt(idf);
                                                    String Query3="select * from provider_details where S_No='"+B_Id+"'";
                                  String Query="select * from provider_hospital where H_Name='"+Hospital+"' and Care_Id='"+B_Id+"'";
                                    String Query1="select * from provider_doctors where S_No='"+D_Id+"' and Care_Id='"+B_Id+"'";
                                      String Query2="select * from provider_services where Service_name='"+Service+"' and Care_Id='"+B_Id+"'";
                                    System.out.println(Query3);
                                      %>
                                      <center>
                                          <br><br><h2>OVER ALL BOOKING REPORT</h2><br><br>
                                          <table>
                                              <tr><td> <h4 style="color: #700">User Information</h4></td></tr>
                                  <tr><td>User ID :</td><td><%=id%></td></tr>
                                          <tr><td>User Name:</td><td><%=care%></td></tr>
                                          <%
                                        ResultSet Rs1=db.Select(Query3);
                                  if(Rs1.next())
                                        {
                                        %>
                                        <tr><td> <h4 style="color: #700">Provider Information</h4></td></tr>
                                     <tr><td>Provider ID :</td><td><%=Rs1.getInt("S_No")%></td></tr>
                                     <input type="text" value="<%=Rs1.getInt("S_No")%>" name="P_Id" hidden>
                                          <tr><td>Provider Name:</td><td><%=Rs1.getString("P_Name")%></td></tr>
                                            
                                             <tr><td>Health Care Name:</td><td><%=Rs1.getString("Health_name")%></td></tr>
                                      
                                        <%
                                        }
                                        
                                        ResultSet Rs2=db.Select(Query);
                                  if(Rs2.next())
                                        {
                                        %>
                                        <tr><td> <h4 style="color: #700">Hospital Information</h4></td></tr>
                                         <tr><td>Hospital ID :</td><td><%=Rs2.getInt("S_No")%></td></tr>
                                           <input type="text" value="<%=Rs2.getInt("S_No")%>" name="H_Id" hidden>
                                          <tr><td>Hospital Name:</td><td><%=Rs2.getString("H_Name")%></td></tr>
                                             <tr><td>Hospital Address:</td><td><%=Rs2.getString("Address")%></td></tr>
                                        
                                        <%
                                        }
                                           ResultSet Rs3=db.Select(Query1);
                                  if(Rs3.next())
                                        {
                                        %>
                                        <tr><td> <h4 style="color: #700">Doctor Information</h4></td></tr>
                                         <tr><td>Doctor ID :</td><td><%=Rs3.getInt("S_No")%></td></tr>
                                           <input type="text" value="<%=Rs3.getInt("S_No")%>" name="D_Id" hidden>
                                          <tr><td>Doctor Name:</td><td><%=Rs3.getString("D_Name")%></td></tr>
                                             <tr><td>Doctor Description:</td><td><%=Rs3.getString("D_Details")%></td></tr>
                                         
                                        <%
                                        }
                                         ResultSet Rs4=db.Select(Query2);
                                  if(Rs4.next())
                                        {
                                        %>
                                        <tr><td> <h4 style="color: #700">Service Information</h4></td><tr>
                                       <tr><td>Service ID :</td><td><%=Rs4.getInt("S_No")%></td></tr>
                                         <input type="text" value="<%=Rs4.getInt("S_No")%>" name="S_Id" hidden>
                                          <tr><td>Service Name:</td><td><%=Rs4.getString("Service_name")%></td></tr>
                                             <tr><td>Amount:</td><td><%=Rs4.getString("Amount")%></td></tr>
                                        
                                        <%
                                        }
                                        %>
                                      </table>
                                      <h4><input type="SUBMIT" value="SUBMIT"><a href="Services_Booking.jsp"><input type="button" value="CANCEL"></a></h4>
                                      </center>
                            </form>
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
                                    session.setAttribute("msg","Please Select Again values");
                                    response.sendRedirect("Booking.jsp?B_id="+idf);
                                        }
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("User_Login.jsp");
                                    }
                                        %>
	</body>
</html>

