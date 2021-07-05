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
						<li>PSMPA</li>
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
		 
		    	<div class="content">
                           
                     
                                   <center><br><br>USER PERSONAL HEALTH RECORD INFORMATION<br><br><table border="2">
                              <tr><th>Aadhar ID</th><th>Date Of Birth</th>
                              <th>age</th><th>Operation</th><th>Issues</th><th>Bp</th>
                              <th>height</th><th>weight</th><th>Blood Group</th></tr>
                                    <%
                                        try
                                        {
                                                DbConnection db=new DbConnection();
                                       
                                         String query="SELECT  user_phr_details.User_Name, user_phr_details.DOB, user_phr_details.Qualification, user_phr_details.Profession, user_phr_details.age, user_phr_details.Opeartion, user_phr_details.Issuses, user_phr_details.Bp, user_phr_details.height, user_phr_details.weight, user_phr_details.BloodGroup  FROM user_phr_details user_phr_details WHERE NOT EXISTS(SELECT NULL FROM user_phr_secure b WHERE b.User_Id = user_phr_details.User_Id )  UNION ALL SELECT  user_phr_secure.User_Name, user_phr_secure.DOB, user_phr_secure.Qualification, user_phr_secure.Profession, user_phr_secure.age, user_phr_secure.Opeartion, user_phr_secure.Issues, user_phr_secure.Bp, user_phr_secure.height, user_phr_secure.weight, user_phr_secure.BloodGroup from user_phr_secure";
                                           ResultSet rf=db.Select(query);
                                         while(rf.next())
                                           {
                                        %>
                                       
                                    <tr><td><%=rf.getString("User_Name")%></td><td><%=rf.getString("DOB")%></td>
                                    <td><%=rf.getString("age")%></td><td><%=rf.getString("Opeartion")%></td><td><%=rf.getString("Issuses")%></td><td><%=rf.getString("Bp")%></td>
                                    <td><%=rf.getString("height")%></td><td><%=rf.getString("weight")%></td><td><%=rf.getString("BloodGroup")%></td></tr>
						
						
                                                   <%
                                           }
                                         
                                        }
                                        catch(Exception e)
                                        {
                                           System.out.println(e);
                                        }
                                       %>
                                       
                                       </table></center></div>
						 <div class="clear"> </div>
  
		
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

