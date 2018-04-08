<%@ page  language="java" import="java.sql.*,databaseconnection.*"  %>
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

<script language="JavaScript">
function validation()
{
var a = document.form.hostingplan.value;
var b = document.form.paytype.value;
var c = document.form.cardnumber.value;
var d = document.form.cardexpire.value;
var e = document.form.cid.value;


if(document.form.hostingplan.selectedIndex==0)
{
alert("Select the hostingplan");

document.form.hostingplan.focus();

return false;
}
if(document.form.paytype.selectedIndex==0)
{
alert("Select the paytype");

document.form.paytype.focus();

return false;
}

if(c=="")
{
alert("Enter the cardnumber");
document.form.cardnumber.focus();
return false;
}


if(d=="")
{
alert("Enter the cardexpiration date and month");
document.form.cardexpire.focus();
return false;
}
if(f=="")
{
alert("Enter the CVV2/CID number");
document.form.cid.focus();
return false;
}

}
</script>
        
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
    	<img src="images/tit.png" alt="" width="720"/>
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
         		 <p align="right"> <font color="green" size="4"><strong><font color="red"><img src="images/37.png" width="50" height="50">Welcome!CloudUser:</font></strong>&nbsp;&nbsp; 
          <%=email%></font> </p>
         <p><font color="#000000" size="3"><strong>Make Payment For Domain Registration:</strong></font></p></p> 
        <p align="center"> 
          <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='blue' size='3'><strong><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Successfully Registered Your Domain !</blink></strong></font>");
                                                       }
                                               %>
        </p>
             <fieldset style="border: 2px #000000 solid;">
        <legend><font color="#000000" size="3"><strong>Payment</strong></font></legend>
        <table width="337" align="center">
          <form action="payment1.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Web 
                Hosting Plan </strong></font></td>
              <td width="299" class="fielditem"><select name="hostingplan" style="border: 2px #000000 solid;">
                  <option value="--Select--">-----------Select----------</option>
                  <option value="Rupees5000">Rupees5000</option>
                  <option value="Rupees7000">Rupees7000</option>
                  <option value="Rupees9000">Rupees9000</option>
                </select></td></td>
            </tr>
            <tr> 

            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Domain 
                Name</strong></font></td>
              <td width="299" class="name"><input type="text"  name="domainname" value="<%=domainname%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Payment 
                type</strong></font></td>
              <td width="299" class="fielditem"><select name="paytype" style="border: 2px #000000 solid;">
                  <option value="--Select--">----------Select-----------</option>
                  <option value="Visa">Visa</option>
                  <option value="MasterCard">MasterCard</option>
                  <option value="AmericanExpress">AmericanExpress</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Card 
                Number</strong></font></td>
              <td width="299" class="name"><input type="password"  name="cardnumber" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>Card 
                Expiration(MM/YY)</strong></font></td>
              <td width="299" class="name"><input type="text"  name="cardexpire" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="blue" size="3"><strong>CVV2/CID</strong></font></td>
              <td width="299" class="name"><input type="password"  name="cid" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Pay" style="border: 2px #000000 solid;"> 
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