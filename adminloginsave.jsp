<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%@page import="dbconnection.Dbconnection"%>
                                    <%
		 //if(request.getParameter("Submit")!= null)
//   	{
try
{

   
     Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
     // String type=request.getParameter("select").trim();
   
       
      //String pid=request.getParameter("textfield2").trim();
   String u=request.getParameter("textfield").trim();
	
//	  String p=request.getParameter("textfield2").trim();
	  out.println(u);
      
	  
	/* 
	  rs=stmt.executeQuery("select * from admin where username="+"'"+u+"'"+" and pwd="+"'"+p+"'");
	 /// rs=stmt.executeQuery("select * from adminlogin");
  String f="",a="",m="",e="",id="";
      int found=0;
      while(rs.next())
      {
	  	//id=rs.getString(1);
//	  	f=rs.getString(2);
			//a=rs.getString(6);
				//m=rs.getString(4);
	 			//e=rs.getString(3);
			found++;
		}
	 if(found==1)
		 {
				 
			 
				 ///Cookie cook1 = new Cookie("Admin",u);
		 ///cook1.setMaxAge(1200);
		/// response.addCookie(cook1);
//		session.setAttribute("username",id);
//		//out.println(e);
//		session.setAttribute("fname",f);
//		//session.setAttribute("id",id);
//		session.setAttribute("mobile",m);
//		//session.setAttribute("pwd",p);
		
	
		
		            response.sendRedirect("adminpage.jsp"); 
		}
		  else
		 {
	out.println( "<script>alert('Login Unsuccess');window.location='adminlogin.jsp';</script>");




			}*/
     //             rs.close();
		
		//	stmt.close();
		//	con.close();
                 
	
}

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
//	}
%>