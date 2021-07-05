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
                                                <%
                                        ResultSet rs1=db.Select("SELECT * FROM emerency where doc_id='"+care+"'");
                                        while(rs1.next())
                                        {
                                            %>
                                                <li><font color="red"><a href="patient_dete.jsp?id=<%=rs1.getString("aadhar_id")%>&name=<%=rs1.getString("uname")%>">Emergency Patient :<%=rs1.getString("aadhar_id")%>-<%=rs1.getString("uname")%></a></li>
                                                <%
                                        }
                                        %>
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
				            <a href="Add_Report.jsp">ADD REPORT </a>
				           
				        </li>
                                           <li>
				            <a href="upload_dna.jsp">UPLOAD DNA </a>
				           
				        </li>
                                          <li>
				            <a href="Compare_dna.jsp">COMPARE DNA </a>
				           
				        </li>
                                          <li>
				            <a href="View_Report.jsp">View REPORT </a>
				           
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
                                            <br><h4>DOCTOR COUNSEL FORM</h4><br>
                                            <form action="Doctor_Response" method="post">
                                            <table>
                                                  <%
                                        String s="0";
                                        String query="SELECT * FROM user_treatment where D_ID='"+id+"' and Status1='"+s+"'";
                                        ResultSet rf=db.Select(query);
                                      while(rf.next())
                                        {
                                        %>
                                      <tr>
                                                    <td> S_No</td> <td>:</td><td><input type="text" value="<%=rf.getInt("S_No")%>" name="S_No"  style="width: 204px;" readonly> </td>
                                                </tr>
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
                                                 <tr><td>Symptoms</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="Sysm" name="Sysm" required readonly><%=rf.getString("Symptom")%></textarea></td></tr>
                                                 <tr><td>Doctor Response</td><td>:</td><td><textarea style="height: 69px; width: 204px" id="Resp" name="Resp" required></textarea></td></tr>
                                            </table>
                                                     <br><br><br> <input type="submit" value="SUBMIT"> 
                                  
                                        <%
                                            
                                        }
                                            %>
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

