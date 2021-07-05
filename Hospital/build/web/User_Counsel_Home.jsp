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
                                                    <br>User Name :<%=care%></li>
                                                <li></li>
						<li>  An efficient hierarchy attribute based encryption scheme in cloud computing </li>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				
				<ul id="topnav">
					
                                            <li><a href="User_Counsel_Home.jsp">HOME</a></li>
				        <li>
                                            <a href="User_Counsel_Home.jsp">NEW COUNSELING</a>
				        
				        </li>
				        <li>
				            <a href="Old_Record.jsp">OLD RECORDS</a>
				           
				        </li>
                                           <li>
				            <a href="Doctor_Replay.jsp">DOCTOR REPLY</a>
				           
				        </li>
                                       <li>
				            <a href="Report_View.jsp">REPORT VIEW </a>
				           
				        </li>
                                      
                                       <li>
				            <a href="Report_req.jsp">DOCTOR REQUEST </a>
				           
				        </li>
				        <li>
				            <a href="logout.jsp">LOGOUT </a>
				         
				        </li>
				       
        		
        		
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		
		    	<div class="content">
                            <form action="Add_Symptom" method="post">
                           
                            <%
                                        String query="SELECT * FROM booking_service where U_ID='"+id+"' and U_Pass='"+session.getAttribute("c_pass")+"' ";
                                        ResultSet rf=db.Select(query);
                                       if(rf.next())
                                        {
                                        %>
                                        <center>
                                            <br>
                                            <br><h4>USER COUNSEL FORM</h4><br>
                                            <table>
                                                <tr>
                                                    <td> User ID</td> <td>:</td><td><input type="text" value="<%=rf.getInt("U_ID")%>" name="id1"  style="width: 204px;" readonly> </td>
                                                </tr>
                                                 <tr>
                                                     <td> User Name</td> <td>:</td><td><input type="text" value="<%=rf.getString("U_Name")%>" name="name"  style="width: 204px;" readonly> </td>
                                                </tr>
                                                 <tr>
                                                     <td> Hospital Id</td> <td>:</td><td><input type="text" value="<%=rf.getInt("H_ID")%>" name="H_id"  style="width: 204px;" readonly> </td>
                                                     
                                                </tr>
                                                   <tr>
                                                     <td> Doctor Id</td> <td>:</td><td><input type="text" value="<%=rf.getInt("D_ID")%>" name="D_id"  style="width: 204px;" readonly> </td>
                                                     
                                                </tr>
                                                 <tr><td>Symptoms</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="Sysm" name="Sysm" required></textarea></td></tr>
                                            </table>
                                        </center>
                                        <%
                                        }
                                            %>
                                            <center><br><br><br> <input type="submit" value="SUBMIT"></center>
                         
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
                            </form>
                                     
  
		</div>
	
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

