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
                                                    <br>Aadhar_ID :<%=care%></li>
                                                <li></li>
						<li>  An efficient hierarchy attribute based encryption scheme in cloud computing </li>
					</ul>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<ul id="topnav">
					
                                            <li><a href="User_Home.jsp">HOME</a></li>
				        <li>
                                            <a href="Services_Booking.jsp">SERVICES</a>
				        
				        </li>
				      
                                           <li>
                                            <a href="Services_Details.jsp">VIEW SERVICES</a>
				        
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
                            <script>
                             function Validate1()
              {
              
  var Service = document.getElementsByName("Service");
             
    var formValid1 = false;

    var i = 0;
    while (!formValid1 && i < Service.length) {
        if (Service[i].checked) formValid1 = true;
        i++;        
    }

    if (!formValid1) 
        {
            alert("Must select Service!");
              return false;
        }
  return true;
                     
              }
              </script>
              <script language="javascript" type="text/javascript">
        var xmlHttp
        var xmlHttp
        function showState(str) {
            // document.getElementById("state").innerHTML="";
            if (typeof XMLHttpRequest != "undefined") {
                xmlHttp = new XMLHttpRequest();
            }
            else if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            if (xmlHttp == null) {
                alert("Browser does not support XMLHTTP Request")
                return;
            }
            var url = "Senti_word";
            url += "?count=" + str;
            xmlHttp.onreadystatechange = stateChange;
            xmlHttp.open("GET", url, true);
            xmlHttp.send(null);
        }

      

        function ch() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("rate").innerHTML = xmlHttp.responseText
            }
        }




        function stateChange() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("state").innerHTML = xmlHttp.responseText
            }
        }

     
    </script> 
    
    
      <script language="javascript" type="text/javascript">
        var xmlHttp
        var xmlHttp
        function showState1(str) {
             //document.getElementById("state").innerHTML="";
            if (typeof XMLHttpRequest != "undefined") {
                xmlHttp = new XMLHttpRequest();
            }
            else if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            if (xmlHttp == null) {
                alert("Browser does not support XMLHTTP Request")
                return;
            }
            var url = "Senti_word1";
            url += "?count=" + str;
            xmlHttp.onreadystatechange = stateChange1;
            xmlHttp.open("GET", url, true);
            xmlHttp.send(null);
        }

      

        function ch() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("rate").innerHTML = xmlHttp.responseText
            }
        }




        function stateChange1() {
            if (xmlHttp.readyState == 4 || xmlHttp.readyState == "complete") {
                document.getElementById("state1").innerHTML = xmlHttp.responseText
            }
        }

     
    </script> 
    
              <form action="Add_Bookin_Service.jsp" method="post" onsubmit="return Validate1(true);" name="form">
                            <%
                                        String hh=request.getParameter("B_id");
                                        session.setAttribute("B_id", hh);
                                        int B_id=Integer.parseInt(hh);
                                        ResultSet ts=db.Select("Select * from provider_details where S_No='"+B_id+"' ");
                                        
                                        %>		
						 <div class="clear">
                                        <center>
                                            <br><h4>PROVIDER DETAILS</h4><br>
                                        <table border="2">
                                           <tr><th>S_No</th><th>Provider Name</th><th>Health Care Name</th><th>Address</th><th>Contact</th><th>Mail_Id</th><th>Year Of Starting</th><th>Image</th>
                                              </tr>                                       
                                           <%
                                        while(ts.next())
                                        {
                                            %>
                                           <tr><td><%=ts.getInt("S_No")%></td>
                                           <td><%=ts.getString("P_Name")%></td>
                                           <td><%=ts.getString("Health_name")%></td>
                                           <td><%=ts.getString("address")%></td>
                                           <td><%=ts.getString("Contact")%></td>
                                           <td><%=ts.getString("Mail_ID")%></td>
                                           <td><%=ts.getString("Year_starting")%></td>
                                           <td><img src="servlet_1.jsp?name=<%=ts.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                          
                                           
                                           </tr>
                                           <%
                                        }
                                        
                                         ResultSet ts1=db.Select("Select * from provider_hospital where Care_Id='"+B_id+"' ");
                                        
                                   %>
                                        </table>
                                      
                                         <br><h4>HOSPITAL DETAILS</h4><br>
                                          <table border="2">
                                              <tr>
                                                  <td>Select Hospital Name</td><td>
                                                      <select name="Hospital" onchange="showState(this.value)">
                                                       
                                                          <option value="1">Select Hospital</option>                                  
                                           <%
                                        while(ts1.next())
                                        {
                                            %>
                                           <option value="<%=ts1.getString("H_Name")%>"><%=ts1.getString("H_Name")%></option>
                                                    
                                           <%
                                        }
                                        %>
                                          </select>
                                                  </td>
                                              </tr>
                                        </table>
                                      
                                          <div id="state">
                                          </div>
                                  
                                          <div id="state1"></div>
                                        <input type="SUBMIT" value="SUBMIT">
                                      
                                        </center>
					 </div>
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

