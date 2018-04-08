  
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

var b = document.form.email.value;
var b1 = document.form.user.value;
var c = document.form.pass.value;
var d= document.form.repass.value;
var e= document.form.quest.value;
var f= document.form.answer.value;

if(b=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (b.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (b.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(c=="")
{
alert("Enter the UserName");
document.form.user.focus();
return false;
}
if(d=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(e=="")
{
alert("Re-Enter the Password");
document.form.repass.focus();
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
    	<!-- <h2>Welcome To Resource renting for periodical cloud<br></br> workflow applications!</h2> -->
<img src="images/tit.png" alt="" width="720"/><br></br>
  <div class="box_w220">
        	<h4><span>Cloud Service Provider</span></h4>
           	<span></span>
        	<img src="images/cloud.jpeg" width="200" height="150">
        </div> 
        <div  class="box_w220"  >
            
       	
        <h3>Create an Account 
          <p align="right"> <a href="mancloudlogin.jsp"><img src="images/loginhere.gif"> 
            </a> </p>
        </h3>
        <fieldset style="border: 12px #CCCCCC solid;">
        <legend><font color="#336699" size="4"><strong></strong></font></legend>
        <table width="527" align="center">
          <form action="insertmanageracc.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>EmailAddress</strong></font></td>
              <td width="299" class="name"><input type="text"  name="email"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Create 
                a username</strong></font></td>
              <td width="299" class="name"><input type="text"  name="user"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Create 
                your password</strong></font></td>
              <td width="299" class="email"><input type="password"  name="pass"></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Re-enter 
                your password</strong></font></td>
              <td width="299" class="phone"><input type="password"  name="repass"></td>
            </tr>
            <tr> 
              <td width="216" height="51" class="paragraping"><strong><font color="#000000">Select 
                a security question</font></strong></td>
              <td width="299" class="fielditem"><select name="quest">
                  <option value="--Select--">---------Select--------</option>
                  <option value="SiteOwner">What was your Chilhood Nicknname?</option>
                  <option value="SiteManger">What was the name of your first school?</option>
                </select></td>
            </tr>
            <tr> 
              <td width="216" height="46" class="paragraping"><font color="#000000"><strong>Enter 
                your answer</strong></font></td>
              <td width="299" class="phone"><input type="text"  name="answer"></td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Create"> 
                <input type="reset" name="reset" class="button2" value="Clear"></td>
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