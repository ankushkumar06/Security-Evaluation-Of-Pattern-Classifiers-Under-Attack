<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="dbconnection.Dbconnection"%>

<%

		try
		{
				 		 Connection con=Dbconnection.getConnection(); 
			      Statement stmt=con.createStatement();

					 String t1=request.getParameter("d").trim();
					
       	  
		
						PreparedStatement pstmt=con.prepareStatement("update user set status='ACTIVE' where emailid=?");   
						pstmt.setString(1,t1);
	
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
					out.println( "<script>alert('Account Activated');window.location='adminpage.jsp';</script>");
						//   response.sendRedirect("donerregsaveack.jsp");
						
						
					}
    
				catch(Exception e)
				{
				out.println("Exception occured" +e);
				}
				
%>				