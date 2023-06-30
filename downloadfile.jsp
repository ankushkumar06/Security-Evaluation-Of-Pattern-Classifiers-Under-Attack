<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>


            <%@page import="dbconnection.Dbconnection"%>
<%@page import="java.io.*"%>
<%@page import="java.nio.channels.FileChannel"%>

<%	String ft=request.getParameter("ft").trim();
	String sun=request.getParameter("id");
	//out.println(id1);	

		File sourceFile = new File(
				"C:\\Users\\Admin\\Desktop\\PROJECT2021\\SecurityEvaluationofPatternClassifiersunderAttack2021\\WebApplication1\\web\\upload\\"+sun);

		File destFile = new File(
				"C:\\Users\\Admin\\Desktop\\PROJECT2021\\SecurityEvaluationofPatternClassifiersunderAttack2021\\WebApplication1\\web\\download\\"+sun);

		/* verify whether file exist in source location */
		if (!sourceFile.exists()) {
			out.println("Source File Not Found!");
		}

		/* if file not exist then create one */
		if (!destFile.exists()) {
			try {
				destFile.createNewFile();
				
				//out.println("<h1 align=center>Download complete! Check Downloads!");
					//out.println("<script> alert('dowloaded sucessfully');(</script>");
				//response.sendRedirect("facultypage.jsp");
		//	out.println("<a href=facultypage.jsp>Click to return to home page </a>");
			out.println( "<script>alert('File downloaed Successfully');window.location='userpage.jsp';</script>");
			if(ft.equals("Private"))
			{
			
				String email=(String)session.getAttribute("email");
				
				 Calendar  calendar = null;
		    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH)+5;

	    String date = month + "/" + dayofmonth + "/" +  year;

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
	    String dot1 = date +" "+ hour + ":" + min  ; 
		  
						 Connection con=Dbconnection.getConnection(); 
			      Statement stmt=con.createStatement();
				  	PreparedStatement pstmt=con.prepareStatement("insert into logfile values(?,?,?,?)");   
						pstmt.setString(1,email);
						pstmt.setString(2,sun);
						pstmt.setString(3,dot1);
						pstmt.setString(4,"Private");

				
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
			}
			
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		FileChannel source = null;
		FileChannel destination = null;

		try {

			/**
			 * getChannel() returns unique FileChannel object associated a file
			 * output stream.
			 */
			source = new FileInputStream(sourceFile).getChannel();

			destination = new FileOutputStream(destFile).getChannel();

			if (destination != null && source != null) {
				destination.transferFrom(source, 0, source.size());
			}

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		finally {
			if (source != null) {
				try {
					source.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (destination != null) {
				try {
					destination.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			}
		
%>
</body>
</html>
