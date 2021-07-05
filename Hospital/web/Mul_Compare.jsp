<%-- 
    Document   : compar
    Created on : Apr 13, 2015, 5:41:11 PM
    Author     : suganya
--%>

<%@page import="GA.GA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                   // String name = null;
                  // String name1 = null;
                    String dataset = null;
                    int match = 0, mismatch = 0;

                    DbConnection db2 = new DbConnection();
                    String data11 = request.getParameter("data1");
                    System.out.println(data11);

                    // System.out.print("data1"+data11);
                    ResultSet rs2 = db2.Select("select * from add_upload1 where S_No=" + data11);
                    while (rs2.next()) {
                        name = rs2.getString("UName");
                        dataset = rs2.getString("DataSet");
                    }

                    ArrayList RF = new ArrayList();
                    ResultSet rs21 = db2.Select("select * from add_upload");
                    while (rs21.next()) {
                        RF.add(rs21.getString("S_No"));
                        String dat1 = "#" + rs21.getString("DataSet");
                        char d2[] = dat1.toCharArray();

//Algorithm Call
                        GA ga = new GA();
                        ga.Analysis_DNA(dataset);
                        ga.Analysis_DNA(dat1);
                %>


                <table>

                    <tr>
                        <td><textarea rows="15" cols="60" name="dat1"><%=dataset%></textarea></td>
                        <td><textarea rows="15" cols="60" name="dat2"><%=dat1%></textarea></td>
                    </tr>
                    <tr>
                        <td>
                            Data Set Lenth : <%=dataset.length()%>
                        </td>
                        <td>
                            Data Set Lenth : <%=dat1.length()%>
                        </td>
                    </tr>
                    <tr>

                    </tr>

                </table>
                <%
                    char d1[] = dataset.toCharArray();
                    int j = d2.length - 1;
                    for (int i = d1.length - 1; i > 0; i--) {
                        if (j != 0) {
                            //out.println("hai");
                            if (d1[i] == d2[j]) {
                                match++;

                                // out.println("["+i+"]["+j+"]="+d1[i]+","+d2[j]+"Match");    
                            } else {
                                mismatch++;
                                // out.println("["+i+"]["+j+"]="+d1[i]+","+d2[j]+"MisMatch");    
                            }

                            j--;

                        } else {
                            continue;
                        }

                    }
                    int maxlen = Math.max(d1.length, d2.length);
                    double m_tches = ((double) match / (double) maxlen) * 100.0;
                    double mis_tches = ((double) mismatch / (double) maxlen) * 100.0;

                %>
                <br/><br/><br/>
                MATCH Percentage : <%=m_tches%>
                <br/><br/><br/><br/><br/>
                MIS MATCH Percentage : <%=mis_tches%>
                <br/><br/>
                <hr/>
                <br/>
                <%
                    }
                    //}
                %>
           </div>
	
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
                                        response.sendRedirect("User_Login.jsp");
                                    }
                                        %>
	</body>
</html>

