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
                  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

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
                                                    <br>Aadhar ID:<%=care%></li>
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
				            <a href="User_Phr.jsp">ADD PHR</a>
				        
				        </li>
				        <li>
				            <a href="Modify_Phr.jsp">MODIFY PHR DETAILS</a>
				           
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
                            <center>
                                <%
                                ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf.next())
                                        {%>
                                
                                    <br><br>
                                    
                                    <h4>
                                        VIEW PERSONAL HEALTH RECORD INFORMATION
                                    </h4>
                                    <br>
                                
                                    <table border="3">
                                        <tr>
                                            <td>User Name</td><td>:</td><td><%=name%></td>
                                        </tr>
                                        <tr>
                                            <td>User Id</td><td>:</td><td><%=id%></td>
                                        </tr>                                          
                                            
                                         <tr>
                                             <td>Date Of Birth</td><td>:</td><td> <%=rf.getString("DOB")%>
                                                   
                                
                                        </tr>
                                        
                                          <tr>
                                                <td>Age </td><td>:</td><td><%=rf.getString("age")%></td>
                                        </tr> 
                                         <tr>
                                                <td>Blood Group </td><td>:</td><td><%=rf.getString("BloodGroup")%></td>
                                        </tr> 
                                          <tr>
                                                <td>Any Surgery </td><td>:</td><td><%=rf.getString("Opeartion")%></td>
                                        </tr> 
                                         <tr>
                                                <td>Major Issues </td><td>:</td><td><%=rf.getString("Issuses")%></td>
                                        </tr>
                                               <tr>
                                                <td>BP Level </td><td>:</td><td><%=rf.getString("Bp")%></td>
                                        </tr>
                                             <tr>
                                                <td>Height </td><td>:</td><td><%=rf.getString("height")%></td>
                                        </tr>
                                         <tr>
                                                <td>Weight </td><td>:</td><td><%=rf.getString("weight")%></td>
                                        </tr>
                                           <tr>
                                                <td>Update Date </td><td>:</td><td><%=rf.getString("C_date")%></td>
                                        </tr>
                                    </table>
                                       
                               
                            </center>
							
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

                    <%
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

