<%@page import="Connection.DbConnection1"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
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
                                    Integer id=(Integer)session.getAttribute("U_Id");
                                    String name=(String)session.getAttribute("User");
                                                     session.setAttribute("U_Id",id);
                     session.setAttribute("User",name);
                                    DbConnection db1=new DbConnection();
                                    System.out.println(id+","+name);
                                    ResultSet rs1=db1.Select("select * from user_registration where S_No='"+id+"' and Aadhar_ID='"+name+"'");
                                    if(rs1.next())
                                    {
                                        String care=rs1.getString("Aadhar_ID");
                                    
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
					
                                            <li><a href="User_Home.jsp">HOME</a></li>
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
				            <a href="Report_View.jsp">REPORT VIEW </a>
				           
				        </li>
                                      
                                       <li>
				            <a href="Report_req.jsp">DOCTOR REQUEST </a>
				           
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
                           <table border="1">
                                    <tr>
                                    <th style="width: 204px;">
                                           S_No 
                                        </th>
                                        <th style="width: 204px;">
                                           Doctor Name 
                                        </th>
                                        <th style="width: 204px;">
                                        File Id
                                        </th>
                                        <th style="width: 204px;">
                                      Current Time 
                                        </th>
                                         <th style="width: 204px;">
                                         Set Time
                                        </th>
                                        <th style="width: 204px;">
                                          Status
                                        </th >
                                       
                                       
                                    </tr>
                                
                                                            <%
                                 DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
Calendar cal = Calendar.getInstance();
System.out.println(dateFormat.format(cal.getTime()));
String ss=dateFormat.format(cal.getTime()).toString();
String ss1[]=ss.split(":");
System.out.println(ss1[0]+","+ss1[1]+","+ss1[2]);
int h=Integer.parseInt(ss1[0]);
int m=Integer.parseInt(ss1[1]);
int s=Integer.parseInt(ss1[2]);
                                                        
                                
                                int kh=1;
                                DbConnection1 db=new DbConnection1();
                               
                                ResultSet rs=db.Select("select * from userreq where Status1='pending' and u_type='Doc' and usr_name='"+session.getAttribute("User")+"'");
                                while(rs.next())
                                {
                                                           
                                                Date dd = new Date();

                                                SimpleDateFormat std = new SimpleDateFormat("yyyy-MM-dd");
                                            %>

                                
                                <tr>
                                    <td>
                                        <input type="hidden" value="<%=rs.getInt("S_no")%>" name="sno" id="sno">
                                        <%=kh++%>
                                    </td>
                                    <td><%=rs.getString("doc_name")%></td>
                                     <td><%=rs.getString("R_Id")%>
                                       <input type="hidden"  name="fid" value="<%=rs.getString("R_Id")%>"  id="fid"  style="width: 196px;" readonly />
                                     </td>
                                     <td>
                                         <input type="hidden"  name="ctime" value="<%=std.format(dd)%>"  id="ctime"  style="width: 196px;" readonly />
                                         <%=std.format(dd)%>
                                     </td>
                                     <td>
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
                                                      </select>
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
                                                   
                                           
                                                  <input type="text"  id="ftime" name="ftime" value="" required readonly>
                                                  
                                         
                                     </td>
                                     <td>
                                         <button onclick="myFunction1()">Accepted</button>
                                         <button onclick="myFunction()">Rejected</button>
                                        
                                     </td>
                                </tr>
                                <%    
                                }
                                %>
                                                            </table>
                     <script>
function myFunction() {
  var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                      
    alert(document.getElementById("ftime").value);                
var ctime=document.getElementById("ctime").value;
var stime=document.getElementById("ftime").value;
     var fid=document.getElementById("fid").value;
var sno=document.getElementById("sno").value;
    var myWindow = window.open("access.jsp?id="+sno+"&ct="+ctime+"&st="+stime+"&fid="+fid,"_top");
  
}
function myFunction1() {
   var h=document.getElementById("hh").value;
                                                              var m=document.getElementById("mm").value;
                                                              var s=document.getElementById("ss").value;
                                                              var ft=h+":"+m+":"+s;
                                                              document.getElementById("ftime").value=ft;
                                                      
    alert(document.getElementById("ftime").value);                
var ctime=document.getElementById("ctime").value;
var stime=document.getElementById("ftime").value;
 var fid=document.getElementById("fid").value;
var sno=document.getElementById("sno").value;
    var myWindow = window.open("access1.jsp?id="+sno+"&ct="+ctime+"&st="+stime+"&fid="+fid,"_top");
  
}
</script>
                         
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

