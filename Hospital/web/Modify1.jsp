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
                                            <a href="Partner.jsp">ADD HOSPITAL</a>
				        
				        </li>
				        <li>
                                            <a href="View_Partner.jsp">VIEW HOSPITAL</a>
				           
				        </li>
                                          <li>
				            <a href="Modify_Partner.jsp">MODIFY HOSPITAL</a>
				           
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
                            <br><br>
                            <h4>HOSPITAL DETAILS</h4><br>
                            <br>
                                 <form action="Modify_Hospital" method="post" onsubmit="return Validate_D(true);">
                            <br><br>
                       
                            <br>
                            <table border="3">
                               
                                <%
                                        String id1=request.getParameter("id");
                                        int id2=Integer.parseInt(id1);
                                      ResultSet rs1=db.Select("select * from provider_hospital where Care_Id='"+id+"' and S_No='"+id2+"'");
                                      while(rs1.next())
                                      {
                                          
                                        %>
                                        <tr><td>Hospital Id</td><td>:</td><td><input type="text" name="id" id="id" value="<%=rs1.getInt("S_No")%>" readonly></td></tr>
                                        <tr><td>Hospital Name</td><td>:</td><td><input type="text" name="S_name" value="<%=rs1.getString("H_Name")%>" id="S_name" required></td></tr>
                                        <tr><td>Hospital Description</td><td>:</td><td><textarea   name="Desc" id="Desc" required style="height: 69px; width: 204px" > <%=rs1.getString("H_Desc")%></textarea></td></tr>
                                 <tr><td>Contact Number</td><td>:</td><td><input type="text" name="Amount" value="<%=rs1.getString("Contact")%>" id="Amount" required></td></tr>
                                 <tr> <td>Address</td><td>:</td><td><input type="text" value="<%=rs1.getString("Address")%>" name="Addr" id="Addr" required style="width: 204px;"></td></tr>
                                        <%
                                      }
                                        
                                        %>
                            </table>
                            <br>
                            <br>
                            <input type="submit" value="MODIFY">
                                </form>
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
				
                            </center>
					  <script>
                                        function Validate_D()
                                        {
                                            var S_Name=document.getElementById("S_Name").value;
                                             if(!S_Name.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Hospital Name Don't Use Numbers")
                                return false;
                            }
                            var Desc=document.getElementById("Desc").value;
                                             if(!Desc.match(/^[a-zA-Z ]+$/))
                            {
                                alert("Invalid Hospital Description Don't Use Numbers")
                                return false;
                            }
                               var Amount=document.getElementById("Amount").value;
                               var len=Amount.length;
                                             if(!Amount.match(/^\d{10}$/))
                                             {                                               
                                             
                                alert("Invalid Contact Number")
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

