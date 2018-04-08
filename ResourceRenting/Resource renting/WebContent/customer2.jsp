<%@ page  language="java" import="java.sql.*,databaseconnection.*" %>
<%

   
   String name = null,email=null;
   name=(String)(session.getAttribute( "name" ));
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
<script language="JavaScript">
function validation()
{
var a = document.form.plan.value;
var b = document.form.memory.value;
var c = document.form.companyname.value;
var d = document.form.streetaddress.value;
var e = document.form.city.value;
var f = document.form.country.value;
var g = document.form.phone.value;

if(document.form.plan.selectedIndex==0)
{
alert("Select the Plan");

document.form.plan.focus();

return false;
}
if(document.form.memory.selectedIndex==0)
{
alert("Select the Memory");

document.form.memory.focus();

return false;
}

if(c=="")
{
alert("Enter the companyname");
document.form.companyname.focus();
return false;
}
if(d=="")
{
alert("Enter the streetaddress");
document.form.streetaddress.focus();
return false;
}
if(e=="")
{
alert("Enter the city");
document.form.city.focus();
return false;
}
if(f=="")
{
alert("Enter the country");
document.form.country.focus();
return false;
}
if(g=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(g))
    {
        alert("Please enter the Correct Phone number");
			document.form.phone.focus();
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
        <table width="339" align="center">
          <form action="customer3.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong> 
                Customer</strong></font></td>
              <td width="299" class="name"><input type="text"  name="siteowner" value="<%=email%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Domain 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>SLA Plan</strong></font></td>
              <td width="299" class="fielditem"><select name="plan" style="border: 2px #000000 solid;">
                  <option value="--Select--">---------Select---------</option>
                  <option value="90">3 month</option>
                  <option value="180">6 month</option>
                  <option value="365">1 year</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Choose Memory</strong></font></td>
              <td width="299" class="fielditem"><select name="memory" style="border: 2px #000000 solid;">
                  <option value="--Select--">---------Select---------</option>
                  <option value="10">10 KB</option>
                  <option value="20">20 KB</option>
                  <option value="30">30 KB</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Company 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="companyname" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Street 
                Address</strong></font></td>
              <td width="299" class="name"><input type="text"  name="streetaddress" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>City</strong></font></td>
              <td width="299" class="name"><input type="text"  name="city" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Country</strong></font></td>
              <td width="299" class="name"><input type="text"  name="country" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Phone</strong></font></td>
              <td width="299" class="name"><input type="text"  name="phone" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Continue" style="border: 2px #335B63 solid;"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px #000000 solid;"></td>
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