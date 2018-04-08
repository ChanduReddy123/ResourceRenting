  
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
var a = document.form.email.value;
var b = document.form.pass.value;

if (a.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (a.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	

if(b=="")
{
alert("Enter the password");
document.form.pass.focus();
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
                <li><a href="userlogin.jsp">User Login</a></li>
                <li><a href="csp.jsp" class="current">CSP Login</a></li>
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
    	<!-- <h2>Welcome To Resource renting for periodical cloud<br></br> workflow applications!</h2> -->
<img src="images/tit.png" alt="" width="720"/><br></br>
  <div class="box_w220">
        	<h4><span>Cloud Service Provider</span></h4>
           	<span></span>
        	<br></br><br></br>
           <img src="images/free_cloud_web_hosting.png" width="190" />
        </div> 
        <div  class="box_w220"  >
            
        <h3><font color="blure" size="3">Welcome To Cloud Login:</font></h3>
				  <br></br><br></br>
        <fieldset style="border: 2px violet solid; border-radius:20px;">
        <legend><font color="red" size="3"><strong>CloudLogin</strong></font></legend>
        <table width="339" align="right">
          <form action="csplogin1.jsp" method="post" name="form" onSubmit="return validation();">
            <tr> 
              <td width="156" height="46" class="paragraping"><strong><font color="#000000" size="3">UserName</font></strong></td>
              <td width="189" class="fielditem"><input type="text"  name="email" style="border: 1px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="156" height="51" class="paragraping"><strong><font color="#000000" size="3">Password</font></strong></td>
              <td width="189" class="fielditem"><input type="password"  name="pass" style="border: 1px #000000 solid;"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button" value="Login" style="border: 1px #335B63 solid;"> 
                &nbsp;&nbsp; <input type="reset" name="reset" class="button" value="Clear" style="border: 1px #000000 solid;"></td>
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