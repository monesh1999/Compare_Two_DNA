<%-- 
    Document   : Compare_dna
    Created on : Feb 23, 2018, 11:19:28 AM
    Author     : user
--%>

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
                   <script type="text/javascript">
            $(document).ready(function() {

                $("#multiselect").dropdownchecklist({
                    onItemClick: function(checkbox, selector) {
                        var justChecked = checkbox.prop("checked");
                        var checkCount = (justChecked) ? 1 : -1;
                        for (i = 0; i < selector.options.length; i++) {
                            if (selector.options[i].selected)
                                checkCount += 1;
                        }
                        if (checkCount > 3) {
                            alert("Limit is 3 fruits to choose");
                            throw "too many";
                        }
                    }, width: 250
                });
            });

            function data(oCheckbox)
            {
                var checkk = oCheckbox.value;
                window.location.href = "http://localhost:8084/DNA/compare.jsp?data=" + checkk;

            }
            function data1(oCheckbox)
            {
                var checkk = oCheckbox.value;
                window.location.href = "http://localhost:8084/DNA/compare.jsp?data1=" + checkk;

            }

            var requestaa;
            function Select_Another_SETS(S_SET)
            {
                var url = "Get_Anothers.jsp?val=" + S_SET;
                if (window.XMLHttpRequest) {
                    requestaa = new XMLHttpRequest();
                }
                else if (window.ActiveXObject) {
                    requestaa = new ActiveXObject("Microsoft.XMLHTTP");
                }

                try {
                    requestaa.onreadystatechange = getInfo;
                    requestaa.open("GET", url, true);
                    requestaa.send();
                } catch (e) {
                    alert("Unable to connect to server");
                }
            }

            function getInfo() {
                if (requestaa.readyState == 4) {
                    var val = (requestaa.responseText).toString();
                    var tval = val.split(",");
                    var tg = tval.length;
                    var mnad = document.getElementById('multiselect');
                    var ee = 2;
                    while (mnad.length >= ee) {
                        mnad.remove(mnad.length - 1);
                    }
                    for (var i = 0; i < (tg - 1); i++)
                    {
                        var T_tval = tval[i].split("-");
                        var option = document.createElement("option");
                        option.value = T_tval[0];
                        option.text = T_tval[1];
                        mnad.add(option);
                    }
                }
            }

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
						  <center>
                    <form action="Mul_Compare.jsp" method="post">
                        <%
                            //String name = null;
                            String name1 = null;
                            int i = 1;
                            String data = request.getParameter("data");
                            if (data != null) {
                                session.setAttribute("data", data);
                            }
                            String dataset = null;
                           // DbConnection db = new DbConnection();
                            ResultSet rs1 = db.Select("select * from add_upload1");
                        %>
                        <table><tr><th>Select Data Set 1</th><th>Select Data Set 2</th></tr>
                            <tr><td>       <select name="data1" onchange="Select_Another_SETS(this.value);" style="width: 250px;">           <%

                                while (rs1.next()) {%>
                                <option value="select">Select User ID</option>
                                        <option value="<%=rs1.getInt(1)%>"><%=rs1.getString("UName")%> </option>

                                        <%
                                                i++;
                                            }
                                        %>
                                    </select></td>
                                <td>  <select name="multiselect" id="multiselect" class="multiselect" multiple style="height: 150px; width: 250px;">   

                                    </select></td>
                            </tr>
                            <tr>
                                <td><input type="submit" value="Compare"></td>
                            </tr>

                        </table>

                    </form>
                </center>        <%
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

