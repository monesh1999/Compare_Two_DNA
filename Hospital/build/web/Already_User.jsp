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
                                    Integer id=(Integer)session.getAttribute("D_Id");
                                    String name=(String)session.getAttribute("Doctor");
                                                     session.setAttribute("D_Id",id);
                     session.setAttribute("Doctor",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from provider_doctors where S_No='"+id+"' and D_Name='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("D_Name");
                                    
                                    %>
				<div class="contact-info">
					<ul>
						<li>Doctor Id :<%=id%>
                                                    <br>Doctor Name :<%=care%></li>
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
                                            <li><a href="Doctor_Home.jsp">HOME</a></li>
				        <li>
				            <a href="Doctor_Home.jsp">NEW COUNSEL PATIENT</a>
				        
				        </li>
				        <li>
				            <a href="Already_User.jsp">PATIENT LIST </a>
				           
				        </li>
				        <li>
				            <a href="logout.jsp">LOGOUT </a>
				         
				        </li>
				       
        		
        		</div>	
    		</ul>
		
		<div class="clear"> </div>
			<!--start-image-slider---->
				
					<!--End-image-slider---->
		    <div class="clear"> </div>
		    <div class="wrap">
		    	<div class="content">
							
						 <div class="clear"> </div>
                                                   <center>
                                            <br>
                                            <br><h4>PATIENT LIST</h4><br>
                                            <center>
                                            <table border="2">
                                                <tr><th>U_ID</th><th>U_Name</th><th>Doctor_ID</th><th>Hospital_ID</th><th>Symptom</th><th>D_Reply</th></tr>
                                                <%
                                       
String query="SELECT a.S_No, a.U_ID, a.U_Name, a.H_ID, a.D_ID, a.Symptom, a.D_Replay, a.Status1 FROM user_treatment a    WHERE a.D_ID='"+id+"' and NOT EXISTS(SELECT NULL FROM treatment_encrypt b WHERE b.SS_No = a.S_No and D_ID='"+id+"')  UNION ALL SELECT S_No, U_ID, U_Name, H_ID, D_ID, Symptom, D_Replay, Status1 FROM treatment_encrypt  WHERE D_ID='"+id+"' ORDER BY D_Replay";
 ResultSet rf=db.Select(query);
 while(rf.next())
 {
     %>
                                                <tr><td><%=rf.getInt("U_ID")%></td>
                                                <td><%=rf.getString("U_Name")%></td>
                                                <td><%=rf.getInt("D_ID")%></td>
                                                <td><%=rf.getInt("H_ID")%></td>
                                                <td><%=rf.getString("Symptom")%></td>
                                                <td><%=rf.getString("D_Replay")%></td>
                                                
                                                </tr>
                                                <%
 }
                                            %></table>
                                            </center>
  
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
                                        response.sendRedirect("Online_Help.jsp");
                                    }
                                        %>
	</body>
</html>

