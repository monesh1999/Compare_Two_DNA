<%@page import="Connection.DbConnection1"%>
<%@page import="java.text.SimpleDateFormat"%>
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
                                             <center>
                                <%
                                ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+request.getParameter("id")+"' ");
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
                                                <td>Qualification</td><td>:</td><td><%=rf.getString("Qualification")%></td>
                                        </tr>  
                                            <tr>
                                                <td>Profession </td><td>:</td><td><%=rf.getString("Profession")%></td>
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
                                        }
                                        
                       
                            //String dd=request.getParameter("rprt");
                         try
                         {
                             DbConnection1 db1=new DbConnection1();
                            
                             ResultSet rs2=null;
                                 rs=db1.Select("SELECT * FROM user_report where Aadhar_No='"+request.getParameter("id")+"' ");
                            
                           
                            %>
  
                  
                                <table border="1">
                                    <tr>
                                        <th style="width: 204px;">
                                           Date
                                        </th>
                                        <th style="width: 204px;">
                                        Hospital Name
                                        </th>
                                        <th style="width: 204px;">
                                       Aadhar No
                                        </th>
                                         <th style="width: 204px;">
                                           Consultant Doctor
                                        </th>
                                        <th style="width: 204px;">
                                           Description
                                        </th >
                                        <th style="width: 204px;">File Time</th>
                                        <th style="width: 204px;">
                                           Image
                                        </th>
                                         
                                    </tr>
                                    <%
                            String aadhar_Id=null;
                            int i1=1;
                            while(rs.next())
                            {
                                try{
 Date dd1 = new Date();
aadhar_Id=rs.getString("Aadhar_No");
                                                SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        	Date date1 = sdf.parse(std.format(dd1));
                String dt2=rs.getString("Date")+" "+rs.getString("ftime");
                        
        	Date date2 = sdf.parse(dt2);

        	System.out.println(sdf.format(date1));
        	System.out.println(sdf.format(date2));

        	%>
                              <tr>
                                  <td><%=rs.getString("Date")%></td>
                                   
                                     
                                       <td><%=rs.getString("H_Care")%></td>
                                        <td><%=rs.getString("Aadhar_No")%></td>
                                      <td><%=rs.getString("C_Doc")%></td>
                                        <td><%=rs.getString("Desc")%></td>
                                           <td><%=dt2%></td>
                                        <td>  <a href="newjsp.jsp?name=<%=rs.getString("S_No")%>" target="_top"><img src="newjsp.jsp?name=<%=rs.getString("S_No")%>" style="width: 200px;height: 150px"></a></td>
                            
                              <%
                                
                          

                          %>
                              </tr>
                          <%
                                
                                	}catch(Exception ex){
    		ex.printStackTrace();
    	} 
                            }
                         }catch(Exception e)
                         {
                              System.out.println("Error"+e); 
                         }
                                
                            %>
  </table>  
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

