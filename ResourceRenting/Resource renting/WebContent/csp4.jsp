
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%

		String domainname = request.getParameter("domainname");
		String server = request.getParameter("server");
		session.setAttribute("server",server);
		String days = (String)session.getAttribute("days");
		String status="Allocated";
		int day=Integer.parseInt(days);
		java.util.Date now = new java.util.Date();
	String date=now.toString();
 	String DATE_FORMAT = "yyyy-MM-dd";
 	SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
 	String strDateNew1 = sdf.format(now) ;
 	Calendar p = Calendar.getInstance();
 	p.setTime(sdf.parse(strDateNew1));
 	p.add(Calendar.DATE, day);  // number of days to add
 	String strDateNew2 = sdf.format(p.getTime());
										
				try{
				Connection	con=databasecon.getconnection();
				PreparedStatement ps=con.prepareStatement("Update domainrequest set date=?,status=?,server=? where domainname='"+domainname+"' ");
				ps.setString(1,strDateNew2);
				ps.setString(2,status);
				ps.setString(3,server);
				int x=ps.executeUpdate();
				
				response.sendRedirect("csp5.jsp?message=success");
				}
				catch (Exception ex) 
				{
					out.println(ex.getMessage());
				}
		
			
	
		
	
 %>
