<%@page language="java" import="java.sql.*,databaseconnection.*" %>
<%@page import="com.javatpoint.Graph"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Resource renting for periodical cloud workflow applications</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2042 The Block
http://www.tooplate.com/view/2042-the-block
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<script>
function clos()
{
    window.open("index.html","_blank");
    setTimeout('self.close()',500);
}
</script>
        
</head>
<body>

<div id="tooplate_wrapper">

	<div id="tooplate_header">
        <div id="site_title"><h1><a href="#">Resource Rent</a></h1></div>
        <div id="tooplate_menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="userlogin.jsp">User Login</a></li>
                <li><a href="csp.jsp" class="current">CSP Login</a></li>
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
    	
		 <img src="images/tit.png" alt="" width="720"/><br></br>
    
        <div  class="box_w220" >
        
<li><a href="csp2.jsp"><strong>Cloud Sites</strong></a></li>

<br>
        <li><a href="serverstatus.jsp"><strong>Server Status</strong></a></li>
		<br>
		<li> <a href="ch_chart.jsp"><strong>ViewResource<br>AllocationStatus<br>(Using BarChart)</strong></a> </li>
		<br>
       </div>
        <div  class="box_w220" >
           <form action="#">
		<table style="margin-left: 10px; border-collapse: collapse; height: 45px;" border="1px solid gray">           
           <tr><td style="font:italic  20px Georgia;font-size:20px;color:red">Select Type</td>
           <td><select name="type" class="tex1" style="border: 2px blue solid; border-radius:10px; width: 175px; height: 25px;">
           <option value="select Chart Type">----Select Chart Type-----</option>
           <option value="column">Column Chart</option>
           <option value="bar">Bar Chart</option>
           <option value="area">Area Chart</option>
           <option value="spline">Spline Chart</option>
           <option value="splineArea">Spline Area Chart</option>
            <option value="line">Line Chart</option>
           <option value="pie">Pie Chart</option></select></td>
           <td colspan="2"><input type="submit" value="submit" style="font-size: 20px; border-radius:10px;"></td></tr>
           <%
String server = null;
Integer used = 0;
ArrayList<Graph> list=new ArrayList<Graph>();  
String s ="";
try
{
	 
	PreparedStatement psmt=null;
	ResultSet rs=null;
	
			Connection con=databasecon.getconnection();

			psmt =con.prepareStatement("select server,used from server");

			rs=psmt.executeQuery();
			while(rs.next())

			    {
				 server=rs.getString(1);
				used=rs.getInt(2);
				//Integer c=Integer.parseInt("count");
				//count=c;
			System.out.println("jai"+server);
			System.out.println("file id jai"+used);
			Graph as=new Graph();
			as.setServer(server);
			as.setUsed(used);
			list.add(as); 
			    }
			for(Integer i =0;i<list.size(); i++){
				
				Graph a = list.get(i);
				s=s+"{label: \""+a.getServer()+"\",y:"+a.getUsed()+"},";
				
			}
			System.out.println("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&:"+s); 
		}
		 catch(Exception e)
		{
			 e.printStackTrace();
		}
		%>
		 </table>
		                </form>
		                <%
		                String type = request.getParameter("type");
		                		 %>
		<script  type="text/javascript" src="canvasjs.min.js"></script>
		<script type="text/javascript">

		window.onload = function () {
			
			var chart = new CanvasJS.Chart("chartContainer", {
				theme: "theme2",//theme1
				title:{
					text: "AOL Generated File Approach"              
				},
				animationEnabled: false,   // change to true
				data: [              
				{
					// Change type to "bar", "area", "spline", "pie",etc.
					type: "<%=type%>",
					dataPoints: [
					             <%=s%>
					]
				}
				]
			});
			chart.render();
		}
		</script>    
		           
		    <div id="chartContainer" style="height: 300px; width: 100%;"></div>     
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