<%@ page  language="java" import="java.sql.*,databaseconnection.*" %>
<%String email=(String)session.getAttribute("email");%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resource renting for periodical cloud workflow applications</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />


        
</head>
<script language="JavaScript">
function validation()
{
var a = document.form.domainname.value;
if(a=="")
{
alert("Enter the domain name");
document.form.domainname.focus();
return false;
}



}
</script>
<script>
function clos()
{
    window.open("index.html","_blank");
    setTimeout('self.close()',500);
}
</script>
<body ng-app="app">
	<script src="angular.min.js"></script>
	<script src="angular-messages.min.js"></script>
	<script>
		var app = angular.module('app', [ 'ngMessages' ]);
	</script>
<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title"><h1><a href="#">Resource Rent</a></h1></div>
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="userlogin.jsp" class="current">User Login</a></li>
                <li><a href="csp.jsp">CSP Login</a></li>
             <!--    <li><a href="adminlogin.jsp">Admin Login</a></li> -->
             <li><a  href="javascript:clos()">Logout</a></li> 
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
    
    <div id="tooplate_middle">
    	<div id="flash_grid_slider">
            
                 <img src="images/cloud-service-provider.png" alt="Get Adobe Flash player" />
        </div>
    </div> <!-- end of middle -->
    
    <div id="tooplate_content"><span class="content_top"></span>
    	<!-- <h2>Resource renting for periodical cloud workflow <br></br> applications!</h2> -->
    	<img src="images/tit.png" alt="" width="720" />
    	<br></br>

  <div class="box_w220">
        	<h4><span>User Page</span></h4>
           	<span></span>
        	<a href="customer.jsp">Domain Register </a>
			<br> </br> 
			<a href="viewclouduser.jsp">View Cloud User Details</a>
			<br></br> 
			<a href="viewdomain.jsp">View Domain Details</a>
			<br></br> 
			<a href="sitemanager1.jsp">Create Site</a>
			<br></br> 
			<a href="sitestatus.jsp">View Site Status</a>
			<br></br>
			<a href="viewhostsite.jsp">View Hosted Sites</a>
			
        </div> 
        <div  class="box_w220"  >
        	<!-- <h4><span>Donec Tincidunt Varius</span></h4> -->
         <p align="right"> <font color="green" size="4"><strong><font color="red">Welcome!CloudUser:</font></strong>&nbsp;&nbsp; 
          <%=email%></font> </p>
        <p><font color="#000000" size="4"><strong>Domain Registration:</strong></font></p>

        <fieldset style="border: 2px red solid; border-radius:20px;">
        <legend><font color="#000000" size="3"><strong>Register</strong></font></legend>
         <table width="330" height="120" align="center" bgcolor='#CC9999'">
          <form name="form" method="post" action="hostsite.jsp" onSubmit="return validation();">
            <tr> 
              <td width="167" height="57"><font color="#000000" size="3"><strong>Enter 
                Site Name</strong></font></td>
              <td width="521"><input type="text" name="domainname" style="border: 2px #000000 solid;"> <font color="#FF0000">(Example:www.google.com)</font></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="sub" value="Go" style="border: 2px #000000 solid;"> </td>
            </tr>
          </form>
        </table>
        </fieldset>
			
			
        </div>
     
        <div class="cleaner"></div>
    </div> <!-- end of content -->
    
    <div id="tooplate_footer">
    	Resource Renting for Periodical Cloud Workflow Applications
        <div class="cleaner"></div>
	</div>

</div> <!-- end of wrapper -->

</body>
</html>