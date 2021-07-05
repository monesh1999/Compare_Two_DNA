<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Connection.DbConnection1"%>
<%@page import="java.util.Date"%>
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
				            <a href="Add_Report.jsp">ADD REPORT </a>
				           
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
						 <%
                                                Date dd = new Date();

                                                SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd");
                                            %>
	
						 <div class="clear"> </div>
                                                   <center>
                                            <br>
                                            <br><h4>DOCTOR ADD REPORT FORM</h4><br>
                                             <form name="form" enctype="multipart/form-data" action="Add_Report" method="post" onsubmit="return ValidateDate12();">
                                  <%
                                                ResultSet rs21=db.Select("SELECT * FROM booking_service WHERE D_ID ='"+session.getAttribute("D_Id")+"'");
        
              
                     %>  
                      <script>
        function ValidateDate12()
        {

    
                                                           var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                      
    //alert(document.getElementById("ftime").value);                                   
   return true;
        }
        
        
    </script>
     <script>
                                                          function timechange()
                                                          {
                                                              var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                              
                                                          }
                                                     </script>
                                                     <table> 
                     <tr><td>User Name</td><td><select name="Ano">
                                                    <%while(rs21.next())
                                                    {
                                                                        %>
                                                   <option value="<%=rs21.getString("U_Name")%>"><%=rs21.getString("U_Name")%></option>
                                                        
                                                        <%
                                                    }
                                                        DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
Calendar cal = Calendar.getInstance();
System.out.println(dateFormat.format(cal.getTime()));
String ss=dateFormat.format(cal.getTime()).toString();
String ss1[]=ss.split(":");
System.out.println(ss1[0]+","+ss1[1]+","+ss1[2]);
int h=Integer.parseInt(ss1[0]);
int m=Integer.parseInt(ss1[1]);
int s=Integer.parseInt(ss1[2]);
                                                        %>
                                                </select></td></tr>
                                              <tr><td>Date</td><td><input type="text" id="C_Date" name="cdate" value="<%=std.format(dd) %>" readonly></li> 
                                                <tr><td>Report Type</td><td><select name="rprt">
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                                                    </select></td></tr>
                                                 <tr><td>Description</td><td><input type="text" id="des" name="des" value="" required></td></tr>
                                                  <tr><td>Image</td><td><input type="file" id="file1" name="file1" accept="image/*" required></td></tr>
                                                <tr><td>Consultant Doctor</td><td>
                                                      <select name="doctor" id="doctor" >
                                                <% 
                                                                     
                                                                  
                                                                       
                                                    %>
                                                    <option value="<%=session.getAttribute("D_Id")%>"><%=session.getAttribute("D_Id")%></option>
                                            <%
                                                                        %></select></td></tr>
                                                    
                                                <tr><td>Set Time</td><td>
                                                      <select name="hh" id="hh" onchange="return timechange()">
                                                        
                                                          <%
                                                                       for(int i=h;i<=24;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select>
                                                      <select name="mm" id="mm" onchange="return timechange()">
                                                     
                                                          <%
                                                                       for(int i=m;i<=60;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select>
                                                   <select name="ss" id="ss" onchange="return timechange()">
                                                          
                                                          <%
                                                                       for(int i=s;i<=60;i++)
                                                                       {
                                                                       %>
                                                          <option value="<%=i%>"><%=i%></option>
                                                          <%}
                                                                           %>
                                                      </select></td></tr>
                                                      <script>
                                                          function timechange()
                                                          {
                                                              var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                              
                                                          }
                                                      </script>
                                                   
                                                  </li>
                                               <tr><td>Time</td><td><input type="text"  id="ftime" name="ftime" value="" required readonly></td></tr>
                                             </table>
                                                    <input type="submit" value="ADD DETAILS">
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
					<p>Healthy  &	 All Rights Reserved | Design By PLC</p>
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
        </table>
	</body>
</html>

