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
                  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="css/datepicker.css" type="text/css" />
    <link rel="stylesheet" media="screen" type="text/css" href="css/layout.css" />
    <script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/datepicker.js"></script>
    <script type="text/javascript" src="js/eye.js"></script>
    <script type="text/javascript" src="js/utils.js"></script>
    <script type="text/javascript" src="js/layout.js?ver=1.0.2"></script>
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
                                   <script>
        function displayDate() 
        {

var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date();
            var ds=d2;//to date yyyy-MM-dd (taken currentdate)
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
      document.getElementById("C_Date").value =ds;
        }
    </script>
    <script>
        function ValidateDate()
        {
            
var newdate=document.getElementById("inputDate").value;
        var d1 = new Date(newdate); //from date yyyy-MM-dd
            var d2 = new Date();
            var ds=d2;//to date yyyy-MM-dd (taken currentdate)
            var Months = d2.getMonth() - d1.getMonth();
            var Years = d2.getFullYear() - d1.getFullYear();
            var Days = d2.getDate() - d1.getDate();
            Months = (d2.getMonth() + 12 * d2.getFullYear()) - 
            		(d1.getMonth() + 12 * d1.getFullYear());
            var MonthOverflow = 0;
            if (Months - (Years * 12) < 0)
                MonthOverFlow = -1;
            else
                MonthOverFlow = 1;
            if (MonthOverFlow < 0)
                Years = Years - 1; Months = Months - (Years * 12);
            var LastDayOfMonth = new Date(d2.getFullYear(), 
            		d2.getMonth() + 1, 0, 23, 59, 59);
            LastDayOfMonth = LastDayOfMonth.getDate();
            if (MonthOverFlow < 0 && (d1.getDate() > d2.getDate())) {
                Days = LastDayOfMonth + (d2.getDate() - d1.getDate()) - 1;
            }
            else
                Days = d2.getDate() - d1.getDate();
            if (Days < 0)
                Months = Months - 1;
            var l = new Date(d2.getFullYear(), d2.getMonth(), 0);
            var l1 = new Date(d1.getFullYear(), d1.getMonth() + 1, 0);
            if (Days < 0) 
            {
                if (l1 > l)
                    Days = l1.getDate() + Days;
                else
                    Days = l.getDate() + Days;
            }
            document.getElementById("Age").value = Years + 
            "Year(s), " + Months + " Month(s), " + Days + "Day(s)";
      document.getElementById("C_Date").value =ds;
          
          var Prof=document.getElementById("Prof").value;
             if (!Prof.match(/^[a-zA-Z ]+$/)) 
    {
        alert('Profession Should be alphabets ');
        return false;
    }
       var Surgery=document.getElementById("Surgery").value;
             if (!Surgery.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Surgery  Should be alphabets ');
        return false;
    }
        var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    } 
    var Issues=document.getElementById("Issues").value;
             if (!Issues.match(/^[a-zA-Z ]+$/)) 
    {
        alert(' Issues  Should be alphabets ');
        return false;
    }
      var Weight=document.getElementById("Weight").value;
              if(!Weight.match(/^\d{1,3}$/))  
    {
        alert(' Weight  Should be 1 to 3 Digits ');
        return false;
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
				            <a href="User_Phr.jsp">ADD PHR</a>
				        
				        </li>
				        <li>
				            <a href="Modify_Phr.jsp">MODIFY PHR DETAILS</a>
				           
				        </li>
                                           <li>
				            <a href="User_Modify.jsp">VIEW DETAILS</a>
				           
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
                            <center>
                                <%
                                        ResultSet rf=db.Select("select * from user_phr_details where User_Name='"+care+"' and User_Id='"+id+"'");
                                        if(rf.next())
                                        {
                                            session.setAttribute("msg","Phr Details Updated");
                                        
                                            response.sendRedirect("User_Modify.jsp");
                                        }
                                        else
                                        {
                                        %>
                                <form action="Add_Phr" method="post" onsubmit="return ValidateDate(true);">
                                    <br><br>
                                    
                                    <h4>
                                        ADD PERSONAL HEALTH RECORD INFORMATION
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
                                                     <input class="inputDate" id="inputDate" name="inputDate" value="2008-06-17"  style="width: 196px;" readonly />
					
				</p>
			<pre>
<script>
$('#inputDate').DatePicker({
	format:'yyyy-MM-dd',
	date: $('#inputDate').val(),
	current: $('#inputDate').val(),
	starts: 1,
	position: 'r',
        maxDate: "+1D",
	onBeforeShow: function(){
		$('#inputDate').DatePickerSetDate($('#inputDate').val(), true);
	},
	onChange: function(formated, dates){
		$('#inputDate').val(formated);
		if ($('#closeOnSelect input').attr('checked')) {
			$('#inputDate').DatePickerHide();
		}
	}
});
        </script>
                        </pre>
                                
                                        </tr>
                                        <select name="Quali" id="Quali" style="width: 204px;" hidden>
                                                        <option>UG DEGREE</option>
                                                          <option>PG DEGREE</option>
                                                            <option>HIGHER SECONDARY</option>
                                                              <option>SSLC</option>
                                                               <option>FIRST-SSLC</option>
                                                                <option>NO</option>
                                                  
                                                                <input type="hidden" name="Prof" id="Prof" style="width: 204px;" value="aaaaa" required >
                                      
                                          <tr>
                                                <td>Age </td><td>:</td><td><input type="text" value="" name="Age" id="Age" style="width: 204px;vertical-align: top" required readonly></td>
                                        </tr> 
                                         <tr>
                                                <td>Blood Group </td><td>:</td><td><select name="BG" id="BG" style="width: 204px;" onchange="displayDate(this)">
                                                        <option>A+</option>
                                                         <option>A-</option>
                                                         <option>B+</option>
                                                         <option>B-</option>
                                                          <option>AB+</option>
                                                           <option>AB-</option>
                                                            <option>O+</option>
                                                             <option>O-</option>
                                                        </select></td>
                                        </tr> 
                                          <tr>
                                                <td>Any Surgery </td><td>:</td><td><input type="text" value="" name="Surgery" id="Surgery" style="width: 204px;" required></td>
                                        </tr> 
                                         <tr>
                                                <td>Major Issues </td><td>:</td><td><input type="text" value="" name="Issues" id="Issues" style="width: 204px;" required></td>
                                        </tr>
                                               <tr>
                                                <td>BP Level </td><td>:</td><td><select  name="BB" id="BB" style="width: 204px;">
                                                        <option>0-120</option>
                                                      <option>120-139</option>
                                                      <option>140-159</option>
                                                      <option>160-More</option></select></td>
                                        </tr>
                                             <tr>
                                                <td>Height </td><td>:</td><td><select name="Height" id="Height" style="width: 204px;" >
                                                                                      <option>0-152.40cm</option>
                                                      <option>152.41-167.74cm</option>
                                                      <option>167.75-190.50cm</option>
                                                          <option>190.51-205.74cm</option>
                                                            <option>205.75-218.44cm</option>
                                             </select></td>
                                        </tr>
                                         <tr>
                                                <td>Weight </td><td>:</td><td><input type="text" value="" name="Weight" id="Weight" style="width: 204px;" required></td>
                                        </tr>
                                          <tr>
                                                <td>Current Date </td><td>:</td><td><input type="text" value="" name="C_Date" id="C_Date" style="width: 204px;" required readonly></td>
                                        </tr>
                                    </table><br><br>
                                        <input type="submit" value="ADD DETAILS">
                                </form>
                            </center>
							
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

                    <%}
                                    }
                                    else
                                    {
                                        session.setAttribute("msg", "Session Out Please Login");
                                        response.sendRedirect("User_Login.jsp");
                                    }
                                        %>
	</body>
</html>

