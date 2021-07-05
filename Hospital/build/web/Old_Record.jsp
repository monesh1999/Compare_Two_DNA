<%-- 
    Document   : Old_Record
    Created on : Jul 17, 2014, 5:11:16 PM
    Author     : mvinoth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>

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
				            <a href="logout.jsp">LOGOUT </a>
				         
				        </li>
				       
        		
        		
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		
		    	<div class="content">
                            <center>
                                <br><br>  <h4>PATIENT TREATMENT RECORD</h4><br>
                                <table border="2">
                                   
                                    <tr><th>S_No</th><th>U_Id</th><th>User Name</th><th>Hospital_Id</th><th>Doctor_Id</th><th>Symptom</th><th>Status</th></tr>
                           
                            <%
                                        String query="Select * from user_treatment where U_ID='"+id+"'";
                                        ResultSet rd=db.Select(query);
                                        while(rd.next())
                                        {
                                         %>
                                         <tr><td><%=rd.getInt("S_No")%></td>
                                         <td><%=rd.getInt("U_ID")%></td>
                                         <td><%=rd.getString("U_Name")%></td>
                                         <td><%=rd.getInt("H_ID")%></td>
                                           <td><%=rd.getInt("D_ID")%></td>
                                           <td><%=rd.getString("Symptom")%></td>
                                            <td><%=rd.getString("Status1")%></td>
                                         </tr>
                                         <%
                                        }
                                        %>
                                        <tr><td></td></tr>
                                </table>
                                        <br><br><br><font color="red" style="size: A4">* STATUS 1- RECEIVED REPLY FROM DOCTOR <br>STATUS 0 - REPLY PENDING </center>
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

