<%@ page import="java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<% 
	
	java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy hh:mm:ss a";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);

	ResultSet rs1=null;
	int n=0;
	try{
		
		 Connection con=databasecon.getconnection();
		Statement st=con.createStatement();
		String sql1="select max(id) from ownerreg";
		
		rs1=st.executeQuery(sql1);
		
		while(rs1.next())
		{
		if(rs1.getInt(1)==0)
		n=1;
		else
		n=rs1.getInt(1)+1;
		session.setAttribute("id",n);
		}
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
var a = document.form.id.value;
var b = document.form.name.value;
var b1 = document.form.pass.value;
var c = document.form.email.value;
var d= document.form.phone.value;



if(a=="")
{
alert("Enter Your Id");
document.form.id.focus();
return false;
}
if(b=="")
{
alert("Enter the Name");
document.form.name.focus();
return false;
}
if(b1=="")
{
alert("Enter the Password");
document.form.pass.focus();
return false;
}
if(c=="")
{
alert("Enter the emailid");
document.form.email.focus();
return false;
}
if (c.indexOf("@", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}
if (c.indexOf(".", 0) < 0)
{
alert("Please enter a valid e-mail address.");
document.form.email.focus();
return false;
}	
if(d=="")
{
alert("Enter the phoneno");
document.form.phone.focus();
return false;
}
if(isNaN(d))
    {
        alert("Please enter the Correct Phone number");
			document.form.phone.focus();
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
    	<img src="images/tit.png" alt="" width="720" />
<br></br>
  <div class="box_w220">
        	<img src="images/5.png" width="180">
        </div> 
        <div  class="box_w220"  >
        	<!-- <h4><span>Donec Tincidunt Varius</span></h4> -->
         <h3><font size="4" color="blue">CloudUsers Registration</font></h3>
				<br>
				
				 <p align="center"> 
          <%
                                                       String message=request.getParameter("Message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red' size='+1'><blink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registered Successfully !</blink></font>");
                                                       }
                                               %>
        </p>
        <fieldset style="border: 2px green solid; border-radius:20px;">
        <legend><font color="#000000" size="4"><strong>Registration</strong></font></legend>
        <table width="336" align="center">
          <form action="reginsert.jsp" method="post" name="form" onsubmit="return validation();">
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="blue" size="3"><strong>Id</strong></font></td>
              <td width="172" class="id"><input type="text"  name="id" value="<%=n%>" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="blue" size="3"><strong>UserName</strong></font></td>
              <td width="172" class="name"><input type="text"  name="name" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="blue" size="3"><strong>Password</strong></font></td>
              <td width="172" class="name"><input type="password"  name="pass" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="blue" size="3"><strong>EmailId</strong></font></td>
              <td width="172" class="email"><input type="text"  name="email" style="border: 2px #000000 solid;"></td>
            </tr>
            <tr> 
              <td width="101" height="46" class="paragraping"><font color="blue" size="3"><strong>PhoneNo</strong></font></td>
              <td width="172" class="phone"><input type="text"  name="phone" style="border: 2px #000000 solid;"></td>
            </tr>
           
            <tr> 
              <td></td>
              <td> <font color="blue"> 
                <%=strDateNew1%>
                </font> </td>
            </tr>
            <tr> 
              <td></td>
              <td><input type="submit" name="B1" class="button2" value="Register" style="border: 2px #000000 solid;"> 
                <input type="reset" name="reset" class="button2" value="Clear" style="border: 2px #000000 solid;"></td>
            </tr>
          </form>
          <%
	}
	catch(Exception e1){
		out.println(e1.getMessage());
	}
%>
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