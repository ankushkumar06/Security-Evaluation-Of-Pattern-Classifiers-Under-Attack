<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<!DOCTYPE HTML>
<!--
	Aesthetic by freehtml5.co
	Twitter: http://twitter.com/fh5co
	URL: http://freehtml5.co
-->
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Beryllium &mdash; Free Website Template, Free HTML5 Template by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Merriweather:300,400|Montserrat:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
    <style type="text/css">
<!--
.style1 {font-size: 24px}
-->
    </style>
</head>
	<body>
		
	<div class="gtco-loader"></div>
	
	<div id="page">

		<nav class="gtco-nav" role="navigation">
			<div class="gtco-container">
				
				<div class="row">
					<div class="col-sm-2 col-xs-12">
						<div id="gtco-logo"><a href="index.jsp"><h5></h5></div>
					</div>

					<div class="col-xs-10 text-right menu-1">
			<h3>Security Evaluation of Pattern Classifiers under Attack</h3>
							<ul>
							<li class="active"><a href="userpage.jsp">Home</a></li>
							<li><a href="uchanegprofile.jsp">Change Profile</a></li>
							<li class="has-dropdown">
								<a href="#">Files</a>
								<ul class="dropdown">
									<li><a href="uuploadfile.jsp">Upload File</a></li>
									<li><a href="udownloadfile.jsp">Download File</a></li>
   									<li><a href="udownloadfile.jsp">Spam Filter</a></li>
								</ul>
							</li>
<!--							<li class="has-dropdown">
								<a href="#">Dropdown</a>
								<ul class="dropdown">
									<li><a href="#">HTML5</a></li>
									<li><a href="#">CSS3</a></li>
									<li><a href="#">Sass</a></li>
									<li><a href="#">jQuery</a></li>
								</ul>
							</li>
-->							<!--<li><a href="portfolio.html">Portfolio</a></li>-->
							<li><a href="index.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
				
			</div>
		</nav>

		<form action="" method="post"  name="form1" >
          <table width="79%" border="0" cellpadding="10" cellspacing="10">
            <tr>
              <td colspan="3"><div align="center"><span class="formhead">User Edit Profle</span></div></td>
              <td width="28%" rowspan="8"><img src="images/signup.png" width="200" height="200" /></td>
            </tr>
            

            <tr>
              <td width="31%" height="59"><div align="right">Old Password</div></td>
              <td width="1%">&nbsp;</td>
              <td width="40%"><div align="left">
                <input type="password" name="textfield" id="textfield" required>
                
              </div></td>
              </tr>
            <tr>
              <td height="51"><div align="right">New Password</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <input type="password" name="textfield2" id="textfield2" required>
              </div></td>
              </tr>
            <tr>
              <td height="51"><div align="right">Confirm Password</div></td>
              <td>&nbsp;</td>
              <td><input type="password" name="textfield3" id="textfield3"></td>
            </tr>
            <tr>
              <td height="51"><div align="right">Photo</div></td>
              <td>&nbsp;</td>
              <td><input type="file" name="fileField" id="fileField"></td>
            </tr>
            <tr>
              <td height="51"><div align="right">Mobile No</div></td>
              <td>&nbsp;</td>
              <td><input name="textfield5" type="text" id="textfield5" maxlength="10"></td>
            </tr>
            
            <tr>
              <td colspan="3">
                <div align="center">
                  <input type="submit" name="button" id="button" value="Update Profile" />
                </div></td>
              </tr>
            <tr>
              <td colspan="3"><p align="center" class="style3"><a href="usersignup.jsp"><strong><br />
              </strong></a></p></td>
              </tr>
          </table>
      </form>
		
		
    <div align="center">
	      <%@page import="dbconnection.Dbconnection"%>
	        <%
		 if(request.getParameter("button")!= null)
	{
try
{

   
     Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
//session.setAttribute("email",u);

//session.setAttribute("pwd",p);

//session.setAttribute("mobile",m);

String email=(String)session.getAttribute("email");

  		 String o=request.getParameter("textfield").trim();
	
		  String n=request.getParameter("textfield2").trim();
	   String c=request.getParameter("textfield3").trim();
	    String p=request.getParameter("fileField").trim();
		 String m=request.getParameter("textfield5").trim();

	
	  rs=stmt.executeQuery("select * from user where emailid="+"'"+email+"'"+" and pwd="+"'"+o+"'");


      int found=0;
      while(rs.next())
      {
	  
			found++;
		}
		
	 if(found==1)
		 {
		 
		 	PreparedStatement pstmt=con.prepareStatement("update user set pwd=?,mobileno=?,photo=? where emailid=?");   
						pstmt.setString(1,n);
						pstmt.setString(2,m);
						pstmt.setString(3,p);
						pstmt.setString(4,email);
					
					 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
				 
			
		out.println( "<script>alert('Updated Successfully');window.location='userpage.jsp';</script>");

		            
		}
		  else
		 {
	out.println( "<script>alert('Some thing went wrong Please Check');window.location='userpage.jsp';</script>");




			}
                  rs.close();
		
			stmt.close();
			con.close();
                 
	
}

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
	}
%>
        </div>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>

