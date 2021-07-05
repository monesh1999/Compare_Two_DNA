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
                                            <a href="Services_Booking1.jsp">SEARCH HOSPITAL</a>
				        
				        </li>
                                         <li>
                                            <a href="automatic_Search.jsp">Automatic Search HOSPITAL</a>
				        
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
                         
<br><br><br>
<form action="Services_Booking1.jsp" method="post"><center>
          
<font face="Algerian" size="6px" color="red">Search Hospital </font><br><br>
<font face="Algerian" size="5px" color="#0C6E6C">SEARCH HOSPITAL BY LOCATION : :
<%
                                      //  DbConnection db=new DbConnection();
                                        ResultSet rs2=db.Select("Select * from provider_details");
                                        %>
                                        <select name="hospital" style="width: 25%; height: 45px; text-align: center; font-family: georgia; font-size: 20px; border-color: black">
                                            <%
                                        while(rs2.next())
                                        {
                                        %>
                                        <option value="<%=rs2.getString("address")%>"><%=rs2.getString("address")%></option>
                                            <%
                                        }
                                            %>
                                        </select>
&nbsp;&nbsp; <input type="submit" value="SUBMIT" style="width: 10%; height: 55px; background-color:#0C6E6C; font-family: georgia; font-size: 20px ">


                                         <%
                                        ResultSet ts=db.Select("Select * from provider_details where address='"+request.getParameter("hospital")+"'");
                                        
                                        %>		
						 
                                        <center>
                                            <br><h4><font face="Algerian" size="6px" color="red">SERVICES DETAILS</font></h4><br>
                                        <table border="2">
                                           <tr><th><font face="georgia" size="5px" color="black">S.No</font></font></th><th><font face="georgia" size="5px" color="black">Provider Name</font></th><th><font face="georgia" size="5px" color="black">Health Care Name</font></th><th><font face="georgia" size="5px" color="black">Address</font></th><th><font face="georgia" size="5px" color="black">Contact</font></th><th><font face="georgia" size="5px" color="black">Mail_Id</font></th><th><font face="georgia" size="5px" color="black">Year Of Starting</font></th><th><font face="georgia" size="5px" color="black">Image</font></th>
                                               <th><font face="georgia" size="5px" color="black">Book Services</font></th></tr>                                       
                                           <%
                                        while(ts.next())
                                        {
                                            %>
                                           <tr><td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getInt("S_No")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("P_Name")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("Health_name")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("address")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("Contact")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("Mail_ID")%></b></font></td>
                                           <td><font face="georgia" size="5px" color="#0C6E6C"><b><%=ts.getString("Year_starting")%></b></font></td>
                                           <td><img src="servlet_1.jsp?name=<%=ts.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                           <td><a href="Booking.jsp?B_id=<%=ts.getInt("S_No")%>">Click Here</a></td>
                                           
                                           </tr>
                                           <%
                                        }
                                        %>
                                        </table></center>
                                        </center></form>
					 </div>
                                                   




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
				</div>
				<div class="right-content">
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

