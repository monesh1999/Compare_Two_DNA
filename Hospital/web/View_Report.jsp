<%@page import="java.util.Date"%>
<%@page import="Connection.DbConnection1"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="Connection.Encryption"%>
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
                                    DbConnection db1=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs1=db1.Select("select * from provider_doctors where S_No='"+id+"' and D_Name='"+name+"'");
                                    if(rs1.next())
                                    {
                                        String care=rs1.getString("D_Name");
                                    
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
                                              <%
                                 DbConnection1 db=new DbConnection1();
                  String dd=request.getParameter("rprt");
                  %>
                  <form action="View_Report.jsp"><table cellspacing="10">
              <tr><td>Reports</td> <td>:</td><td><select name="rprt">
                         
                          
                          <option>All</option>
                                                     <option>Scan</option>
                                                      <option>X-Ray</option>
                                                      <option>ECG</option>
                                                       <option>TS</option>
                                                        <option>Others</option>
                                                       
                                                      
                      </select></td><td><input type="submit" value="View"></td></tr>
          </table>
          </form>
          
		    
                        <%
                            //String dd=request.getParameter("rprt");
                         try
                         {
                             
                            
                             ResultSet rs=null;
                            if(dd.equals("All"))
                            {
                                 rs=db.Select("SELECT * FROM user_report where H_Care='"+name+"' ");
                            
                            }
                        else
                            {
                              rs=db.Select("SELECT * FROM user_report where  Type='"+dd+"' and H_Care='"+name+"'");
                               
                            }
                      
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
                System.out.println(sdf.format(date1).compareTo(sdf.format(date2))<0);
                
                System.out.println(sdf.format(date1).compareTo(sdf.format(date2))>0);
                   System.out.println(sdf.format(date1).compareTo(sdf.format(date2))==0);
                      System.out.println(sdf.format(date1).compareTo(sdf.format(date2))<=0);
                       System.out.println(sdf.format(date1).compareTo(sdf.format(date2))>=0);
                       

        	if(sdf.format(date1).compareTo(sdf.format(date2))>0){
        		
                         Encryption ed=new Encryption();
        	 %>
                              <tr>
                                  <td><%=rs.getString("Date")%></td>
                                  
                                      <td><%=ed.Encryption1(rs.getString("H_Care"))%></td>
                                       <td><%=rs.getString("Aadhar_No")%></td>
                                      <td>****</td>
                                        <td><%=ed.Encryption1(rs.getString("Desc"))%></td>
                                        <td><%=dt2%></td>
                                        
                                        <%
                    if(rs.getString("status").equals("pending"))
                    {
                    %>
                                        <td><a href="filereq.jsp?id=<%=rs.getInt("S_No")%>&name=<%=rs.getString("Aadhar_No")%>">You Want Extra time</a> </td>
                                        <%
                    }else
                    {
                          %>
                                        <td><a href="#">Request Already Send</a> </td>
                                        <%
                    }
                    %>
                             
                              <%
        	}else if(sdf.format(date1).compareTo(sdf.format(date2))<0){
        		System.out.println("Date1 is before Date2");
                            Encryption ed=new Encryption();
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
        	}
                
                
                else if(date1.compareTo(date2)==0){
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
                                
                            }
                else{
        		System.out.println("How to get here?");
        	}

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

