<%@ page  language="java" import="java.sql.*,databaseconnection.*"  %>
<%
try{
   
   String name = null,cspemail=null;
   Connection con;
   con =  databasecon.getconnection();  
   Statement st = con.createStatement();
   String cspname=(String)(session.getAttribute( "cspname" ));
  
  
   cspemail=(String)session.getAttribute("cspemail");
 
   String s = "select * from domainrequest where status='processing' ";
   
   ResultSet rs = st.executeQuery(s);
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
                <li><a href="userlogin.jsp" >User Login</a></li>
                <li><a href="csp.jsp" class="current">CSP Login</a></li>
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
    	<!-- <h2>Welcome To Resource renting for periodical cloud<br></br> workflow applications!</h2> -->
<img src="images/tit.png" alt="" width="720"/><br></br>
  <div class="box_w220">
        	<h4><span>Cloud Service Provider</span></h4>
           	<span></span>
        	<a href="csp2.jsp"><strong>Cloud Sites</strong></a>

<br></br>
        <a href="serverstatus.jsp"><strong>Server Status</strong></a>
		<br></br>
		 <a href="ch_chart.jsp"><strong>ViewResource<br>AllocationStatus<br>(Using BarChart)</strong></a> 
			
        </div> 
        <div  class="box_w220"  >
        	<!-- <h4><span>Donec Tincidunt Varius</span></h4> -->
         <h3><font color="red" size="3">View Website List</font></h3>
        <br>
        <table width="350" height="111" align="center" style="border:1px solid #000000;">
          <tr bgcolor="#3680AD"> 
            <th width="150" height="45"><font color="#000000" size="3">Website Name</font></th>
            <th width="150"><font color="#000000" size="3">Plan</font></th>
            <th width="150"><font color="#000000" size="3">Memory</font></th>
            <th width="150"><font color="#000000" size="3">Add</font></th>
          </tr>
          <%
			while(rs.next()){
  			%>
          <tr> 
            <td> <font color="blue"> 
             <font size="3"> <%=rs.getString("domainname")%></font>
              </font> </td>
            <td> 
             <font size="3"> <%=rs.getString("plan")%>
              days </font></td>
            <td> 
             <font size="3"> <%=rs.getString("memory")%></font>
              KB </td>
            <td><font size="3">  <a href="csp3.jsp?id=<%=rs.getString("domainname")+","+rs.getString("plan")+","+rs.getString("memory")%>">Add 
              A Site</a> </font></td>
          </tr>
          <%}%>
        </table>
            
            
      <% 
}
catch(Exception e)
{
System.out.println(e);
}
%> 
        
       
			
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