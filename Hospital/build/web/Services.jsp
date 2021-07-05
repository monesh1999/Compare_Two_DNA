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
                                    Integer id=(Integer)session.getAttribute("P_Id");
                                    String name=(String)session.getAttribute("provider");
                                                     session.setAttribute("P_Id",id);
                     session.setAttribute("provider",name);
                                    DbConnection db=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs=db.Select("select * from provider_details where S_No='"+id+"' and Username='"+name+"'");
                                    if(rs.next())
                                    {
                                        String care=rs.getString("Health_name");
                                    
                                    %>
				<div class="contact-info">
					<ul>
						<li>Health Care Id :<%=id%>
                                                    <br>Health Care Name :<%=care%></li>
                                                <li></li>
						<li>  An efficient hierarchy attribute based encryption scheme in cloud computing </li>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<ul id="topnav">
					
                                            <li><a href="Provider_Home.jsp">HOME</a></li>
				        <li>
                                            <a href="Services.jsp">ADD SERVICES</a>
				        
				        </li>
				        <li>
                                            <a href="View_Service.jsp">VIEW SERVICES</a>
				           
				        </li>
                                          <li>
				            <a href="Modify_Service.jsp">MODIFY SERVICES</a>
				           
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
                            <form action="Add_Service" method="post" onsubmit="return Validate_Date(true);">
                            <center>
                                <br><br>
                                <h4>ADD NEW SERVICES</h4>      <br><br>
                                <table>
                                    <tr> <td>HEALTH CARE ID</td><td>:</td><td><input type="text" value="<%=id%>" name="id" id="id" readonly style="width: 204px;"></td></tr>
                                    <tr> <td>HEALTH CARE NAME</td><td>:</td><td><input type="text" value="<%=name%>" name="name" id="name" readonly style="width: 204px;"></td></tr>
                                    <tr> <td>SERVICE NAME</td><td>:</td><td><input type="text" value="" name="S_Name" id="S_Name" required style="width: 204px;"></td></tr>
                                    <tr> <td>SERVICE DESCRIPTION</td><td>:</td><td><textarea  name="Desc" id="Desc" required style="height: 69px; width: 204px" ></textarea></td></tr>
                                    <tr> <td>AMOUNT PER DAY</td><td>:</td><td><input type="text" value="" name="Amount" id="Amount" required style="width: 204px;"></td></tr>
                                    
                                </table><BR>
                                <BR>
                                    <input type="submit" value="ADD">
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
				
                            </form>
                                    <script>
                                        function Validate_Date()
                                        {
                                            var S_Name=document.getElementById("S_Name").value;
                                             if(!S_Name.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Service Name Don't Use Numbers")
                                return false;
                            }
                            var Desc=document.getElementById("Desc").value;
                                             if(!Desc.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Service Description Don't Use Numbers")
                                return false;
                            }
                               var Amount=document.getElementById("Amount").value;
                               var len=Amount.length;
                                             if(!Amount.match(/^\d{1,7}$/))
                                             {                                               
                                             
                                alert("Invalid Amount")
                                return false;
                            }
                              
                                           return true; 
                                        }
                                    </script>
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
                                        response.sendRedirect("Provider.jsp");
                                    }
                                        %>
	</body>
</html>

