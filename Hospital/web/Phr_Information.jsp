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
                                                    <br>User Name :<%=care%></li>
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
				            <a href="User_Information.jsp">USER INFORMATION</a>
				        
				        </li>
				        <li>
				            <a href="Phr_Information.jsp">PHR INFORMATION</a>
				           
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
		    	<div class="content"><center>
                                <%
                                        String  DOB="", Qualification="", Profession="", age="", Operation="", issues="", bp="", height="", weight="", BloodGroup="",C_date="";
                                        ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf.next())
                                        {
                                          
                                          DOB=rf.getString("DOB");    
                                          Qualification=rf.getString("Qualification");
                                              Profession=rf.getString("Profession");
                                                  age=rf.getString("age");
                                                      Operation=rf.getString("Opeartion");
                                                          issues=rf.getString("Issuses");
                                                              bp=rf.getString("bp");
                                                                  height=rf.getString("height");
                                                                      weight=rf.getString("weight");
                                                                          BloodGroup=rf.getString("BloodGroup");
                                                                            C_date=rf.getString("C_date");
                                        }
                                                      ResultSet rf1=db.Select("select * from user_phr_secure where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf1.next())
                                        {
                                         
                                          DOB=rf1.getString("DOB");    
                                          Qualification=rf1.getString("Qualification");
                                              Profession=rf1.getString("Profession");
                                                  age=rf1.getString("age");
                                                      Operation=rf1.getString("Opeartion");
                                                          issues=rf1.getString("Issues");
                                                              bp=rf1.getString("bp");
                                                                  height=rf1.getString("height");
                                                                      weight=rf1.getString("weight");
                                                                          BloodGroup=rf1.getString("BloodGroup");
                                                                            C_date=rf1.getString("C_date");
                                            
                                     
                                        }
                                %>
                                <form name="Check1"  action="Encrypt_Phr" method="post" onsubmit="return ValidateDate(true);">
                                    <br><br>
                                    
                                    <h4>
                                         PERSONAL HEALTH RECORD INFORMATION
                                    </h4>
                                    <br>
                                    <br>
                                    <table border="3">
                                        <tr>
                                            <td>User Name</td><td>:</td><td><input type="text" value="<%=name%>" name="U_Name"  style="width: 204px;"  readonly></td>
                                        </tr>
                                        <tr>
                                            <td>User Id</td><td>:</td><td><input type="text" value="<%=id%>" name="U_Id" style="width: 204px;" readonly></td>
                                        </tr>                                          
                                            
                                         <tr>
                                             <td>Date Of Birth</td><td>:</td><td> <p>
                                                     <input class="inputDate" id="inputDate" name="inputDate" value="DOB<%=DOB%>"  style="width: 204px;" readonly /></td><td><input type="checkbox" name="U_Name1" value="inputDate">
					
			
			<pre>

                        </pre>
                                
                                        </tr>
                                         
                                               <%-- <tr><td>Qualification</td><td>:</td><td><input type="text" name="Quali" id="Quali" value="<%=Qualification%>" style="width: 204px;" readonly></td><td>
                                                   <input type="checkbox" name="U_Name1" value="Quali">   </td>
                                        </tr>  
                                            <tr>
                                                <td>Profession </td><td>:</td><td><input type="text" value="<%=Profession%>" name="Prof" id="Prof" style="width: 204px;" required readonly></td><td><input type="checkbox" name="U_Name1" value="Prof"></td>
                                        </tr> 
                                          <tr>--%>
                                                <td>Age </td><td>:</td><td><input type="text" value="<%=age%>" name="Age" id="Age" style="width: 204px;vertical-align: top" required readonly></td><td><input type="checkbox" name="U_Name1" value="Age"></td>
                                        </tr> 
                                         <tr>
                                             <td>Blood Group </td><td>:</td><td><input type="text" value="<%=BloodGroup%>" name="BG" id="BG" style="width: 204px;" readonly ></td><td><input type="checkbox" name="U_Name1" value="BG">
                                                    </td>
                                        </tr> 
                                          <tr>
                                                <td>Any Surgery </td><td>:</td><td><input type="text" value="<%=Operation%>" name="Surgery" id="Surgery" style="width: 204px;" required readonly></td><td><input type="checkbox" name="U_Name1" value="Surgery"></td>
                                        </tr> 
                                         <tr>
                                                <td>Major Issues </td><td>:</td><td><input type="text" value="<%=issues%>" name="Issues" id="Issues" style="width: 204px;" required readonly></td><td><input type="checkbox" name="U_Name1" value="Issues"></td>
                                        </tr>
                                               <tr>
                                                   <td>BP Level </td><td>:</td><td><input type="text" value="<%=bp%>"  name="BB" id="BB" style="width: 204px;" readonly></td><td>
                                                    <input type="checkbox" name="U_Name1" value="BB"></td>
                                        </tr>
                                             <tr>
                                                 <td>Height </td><td>:</td><td><input type="text" value="<%=height%>" name="Height" id="Height" style="width: 204px;" readonly ></td><td>
                                                                                     
                                                     <input type="checkbox" name="U_Name1" value="Height"></td>
                                        </tr>
                                         <tr>
                                                <td>Weight </td><td>:</td><td><input type="text" value="<%=weight%>" name="Weight" id="Weight" style="width: 204px;" required></td><td><input type="checkbox" name="U_Name1" value="Weight"></td>
                                        </tr>
                                          <tr>
                                                <td>Update Date </td><td>:</td><td><input type="text" value="<%=C_date%>" name="C_Date" id="C_Date" style="width: 204px;" required readonly></td><td><input type="checkbox" name="U_Name1" value="C_Date"></td>
                                        </tr>
                                    </table><br><br>
                                        <input type="submit" value="UPDATE DETAILS" onclick="return myFunction()">
                                        <%
                                        
                                        
                                            %>
                                </form>
                            </center>
                                <script>
function myFunction() {
   
    var chks= document.getElementsByName('U_Name1');
 
var hasChecked = false;
for (var i = 0; i < chks.length; i++)
{
if (chks[i].checked)
{
hasChecked = true;
break;
}
}
if (hasChecked == false)
{
alert("Please select at least one.");
return false;
}
return true;
}
 
        
        


</script>
					
                            
						 <div class="clear"> </div>
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

