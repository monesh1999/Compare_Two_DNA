<%@page import="Connection.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
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
            <%
                String name=(String)session.getAttribute("name");
                 String pass=(String)session.getAttribute("pass");
                   session.setAttribute("name",name);
                   session.setAttribute("pass",pass);
                     System.out.println(name+","+pass);
                   if(name!=null&&pass!=null)
                   {
                      if(name.equals("Admin")&&pass.equals("pass"))
            {
                %>
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="#"><img src="images/logo.png" title="logo" /></a>
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
					<div class="wrap" style="width: 1357px;">
                                       <li><a href="Admin_Home.jsp">Home</a></li>
				        <li>
                                            <a href="Secure_User.jsp">USER INFORMATION </a>
				        
				        </li>
				        <li>
                                            <a href="Non_Secure.jsp">USER PHR DETAILS</a>
				           
				        </li>
				        <li>
                                            <a href="Provider_Details.jsp">PROVIDER DETAILS</a>
				         
				        </li>
                                        <li>
                                            <a href="logout.jsp">LOGOUT</a>
				         
				        </li>
				       
        		
        		</div>	
    		</ul>
		 <%
                  String msg=(String)session.getAttribute("msg");
                  if(msg!=null)
                  {%>
                 
                      <script>
                          var ss='<%=msg%>';
                          alert(ss);
                      </script>
                          
              <%  
                      session.removeAttribute("msg");
                  }
                
                 
                  %>
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
                                <%
                  DbConnection db=new DbConnection();
                                        ResultSet ts=db.Select("Select * from provider_details");
                                        
                                        %>		
						 <div class="clear">
                                        <center>
                                            <br><h4>SERVICES DETAILS</h4><br>
                                        <table border="2">
                                           <tr><th>S_No</th><th>Provider Name</th><th>Health Care Name</th><th>Address</th><th>Contact</th><th>Mail_Id</th><th>Year Of Starting</th><th>Image</th>
                                               </tr>
                                           <%
                                        while(ts.next())
                                        {
                                            %>
                                           <tr><td><%=ts.getInt("S_No")%></td>
                                           <td><%=ts.getString("P_Name")%></td>
                                           <td><%=ts.getString("Health_name")%></td>
                                           <td><%=ts.getString("address")%></td>
                                           <td><%=ts.getString("Contact")%></td>
                                           <td><%=ts.getString("Mail_ID")%></td>
                                           <td><%=ts.getString("Year_starting")%></td>
                                           <td><img src="servlet_1.jsp?name=<%=ts.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                        
                                           
                                           </tr>
                                           <%
                                        }
                                        %>
                                        </table>
                                        </center>
                                  
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
                            <%
                    }
                        else
            {
               
                
               session.setAttribute("msg","Session out please login");
                response.sendRedirect("admin.jsp");
                
                
            }
                   }
             else
            {
               
                
               session.setAttribute("msg","Session out please login");
                response.sendRedirect("admin.jsp");
                
                
            }
                  %>
				<div class="clear"> </div>
			</div>
		</div>
	</body>
</html>

