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
                   <script type="text/javascript">
    	var map = null;
        var latLong =null;
			function showlocation() {
			   // One-shot position request.
			    navigator.geolocation.getCurrentPosition(callback);
			}
    	
      function callback(position) {
      	
      	var lat = position.coords.latitude;
      	var lon = position.coords.longitude;
      	            document.getElementById("lat").value=lat;
                     document.getElementById("lan").value=lon;

           	
      latLong	= new google.maps.LatLng(lat, lon);
      	   var latlng = new google.maps.LatLng(lat, lon);
            var geocoder = geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'latLng': latlng }, function (results, status) {
           alert(results[1].formatted_address);
            document.getElementById("loc1").value=results[1].formatted_address;
            
            });
            initMap();
        }
      function initMap() {
        var mapOptions = {
          center: latLong,
          zoom: 1,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("map-canvas"), 
                                          mapOptions);
     var marker = new google.maps.Marker({
				    position: latLong
				});      
				
				marker.setMap(map);
                                     	map.setZoom(8);
      	map.setCenter(marker.getPosition());
        
        
				
      }
   
      //   google.maps.event.addDomListener(window, 'load', initMap);
       
       
    
      
      
    </script>
	</head>
	<body>
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="#"><img src="images/logo.png" title="logo" /></a>
				</div>
                               
				<div class="clear"> </div>
				</div>
			</div>
				<div class="clear"> </div>
				<ul id="topnav">
					
                                            <li><a href="User_Home.jsp">HOME</a></li>
				        <li>
                                            <a href="Services_Booking1.jsp">SEARCH HOSPITAL</a>
				        
				        </li>
                                         <li>
                                            <a href="automatic_Search.jsp">Automatic Search HOSPITAL</a>
				        
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
                         
<br><br><br><center><form action="automatic_Search.jsp" method="post">
            <h3> <font face="Algerian" size="5px" color="#OC6E6C">Location Based Hospital</font> </h3>   <br>   <br>
            <div><font face="Algerian" size="5px" color="purple">Current  Location : <input type="text" value="" id="loc1" name="loc1" style="width: 845px; height: 45px; text-align: center; font-family: georgia; font-size: 20px; color: blue" readonly></font></div>
               <br><font face="Algerian" size="5px" color="purple"> Current  latitude : <input type="text" value="" id="lat" name="lat" style="width: 360px; height: 45px; text-align: center; font-family: georgia; font-size: 20px; color: blue" readonly></font><br>
                <br><font face="Algerian" size="5px" color="purple">Current  longitude : <input type="text" value="" id="lan" name="lan" style="width: 360px; height: 45px; text-align: center; font-family: georgia; color: blue; font-size: 20px;" readonly></font><br>
           <br>
           <input type="Submit" value="CHECK HOSPITAL BASED SEARCH " style="width: 35%; height: 55px; background-color: green ; font-family: georgia; font-size: 20px "> 
       

  
					
                                               
                                                        
                      
                                        
<center>	<script  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBOU-GKNx-YL5o-b8cvlqgyn0rso6iQtUk&callback=showlocation"
  type="text/javascript"></script></center> </form>
                            </center>

                              <br><br>  <table border="3" cellspacing="5" cellpadding="9" bordercolor="#0C6E69">
                                <tr> <td><font face="Algerian" color="black" size="5px">S:NO</font></td>
                                    <td><font face="Algerian" color="black" size="5px">HOSPITAL NAME</td>
                                      <td><font face="Algerian" color="black" size="5px"> ADDRESS </td>
                                      <td><font face="Algerian" color="black" size="5px"> CONTACT</td>
                                    <td><font face="Algerian" color="black" size="5px">MAIL ID</td>
                                    <td><font face="Algerian" color="black" size="5px">USERNAME</td>
                                      <td><font face="Algerian" color="black" size="5px">YEAR OF STARTING</td>
                                      <td><font face="Algerian" color="black" size="5px">IMAGE</td>
                                      <td><font face="Algerian" color="black" size="5px">BOOK SERVICE</td>

                                </tr>
<%
String location=request.getParameter("loc1");
System.out.println(location);
String latitude=request.getParameter("lat");
System.out.println(latitude);
String longitude=request.getParameter("lan");
System.out.println(longitude);
 try
                    {
                        
                    
                    DbConnection db = new DbConnection();
                    String [] ss1=location.split(",");
                    for(String s:ss1)
                    {
                                        System.out.println("select * from   provider_Details where address like ('%"+s.toLowerCase()+"%') ");
            ResultSet rs = db.Select("select * from   provider_Details where address like ('%"+s.toLowerCase().trim()+"%') ");    
           
            while (rs.next()) {
                 %>
                 <tr>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("S_No")%></font></td>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("Health_name")%></font></td>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("address")%></font></td>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("Contact")%></font></td>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("Mail_ID")%></font></td>
                     <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("Username")%></font></td>
                    <td><font face="georgia" color="black" size="5px"><b><%=rs.getString("Year_starting")%></font></td>
 <td><img src="servlet_1.jsp?name=<%=rs.getInt("S_No")%> " style="width: 150px; height: 90px;"></td> 
                                           <td><a href="Booking.jsp?B_id=<%=rs.getInt("S_No")%>"><font color="red" size="4px" face="georgia">Click Here</font></a></td>
                                          
                 </tr>
                     
                 <%
            }
                    }
                    %>     </table>
                   
                   
                     
                 <%
            
                    }
                    
                 catch(Exception e)
                 {
                     System.out.println(e);
}%>
                





		</div>
		<div class="clear"> </div>
		
			<div class="clear"> </div>
			<div class="footer">
				<div class="left-content">
				</div>
				<div class="right-content">
				</div>
				<div class="clear"> </div>
			</div>
	
                  
                                      </div>   
	</body>
</html>

