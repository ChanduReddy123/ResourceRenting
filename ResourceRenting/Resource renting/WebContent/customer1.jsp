<%@ page  language="java" import="java.sql.*,databaseconnection.*"  %>
<%

   
   String name = null,email=null;
   
   String ownerid=(String)(session.getAttribute( "id" ));
   String domainname=(String)(session.getAttribute( "domainname" ));
  
   email=(String)session.getAttribute("email");

   %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resource renting for periodical cloud workflow applications</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />


        
</head>
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
               <!--  <li><a href="adminlogin.jsp">Admin Login</a></li> -->
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
    	<h2>Welcome To Resource renting for periodical cloud<br></br> workflow applications!</h2>

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
			<a href="userlogin.jsp">View Hosted Sites</a>
			
        </div> 
        <div  class="box_w220"  >
        	<!-- <h4><span>Donec Tincidunt Varius</span></h4> -->
         <fieldset style="border: 2px blue solid;">
        <legend><font color="#336699"><strong></strong></font></legend>
        <table width="300" align="center" bgcolor="#FFFFCC">
          <form action="checksite1.jsp" method="post" name="form" onSubmit="return validation();">
            <font color="#"><strong><font color="green">I want to register 
            a domain for my first year of hosting.</font></strong></font> 
            <tr> 
              <td width="69" height="46" class="paragraping" align="center"><strong><font color="#000000">www.</font></strong></td>
              <td width="149" class="fielditem"><input type="text"  name="name" style="border: 2px #000000 solid;" required></td>
              <td width="206" class="fielditem"><select name="domain" style="border: 2px #000000 solid;">
                  <option value="--Select--">-Select Domain-</option>
                  <option value=".com">.com</option>
                  <option value=".net">.net</option>
                  <option value=".org">.org</option>
                  <option value=".biz">.biz</option>
                  <option value=".info">.info</option>
                  <option value=".us">.us</option>
                </select></td>
            </tr>
            <tr> 
              <td></td>
              <td align="center"><input type="submit" name="B1" class="button" value="SearchDomain" style="border: 2px #000000 solid;"></td>
            </tr>
          </form>
        </table>
              <p align="center"><font color="red"><strong>sorry but, 
          <%=domainname%>
          is already Taken</strong></font></p>
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