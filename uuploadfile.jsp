<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.util.*" errorPage="" %>

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
   									<li><a href="uspamfilter.jsp">Spam Filter</a></li>
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
              <td colspan="3"><div align="center"><span class="formhead">Upload File</span></div></td>
              <td width="28%" rowspan="5"><img src="uploadimage.jpg" width="200" height="200" /></td>
            </tr>
            

            <tr>
              <td width="31%" height="59"><div align="right">File Name</div></td>
              <td width="1%">&nbsp;</td>
              <td width="40%"><div align="left">
                <input type="file" name="fileField" id="fileField">
              </div></td>
              </tr>
            <tr>
              <td height="51"><div align="right">Select File Type</div></td>
              <td>&nbsp;</td>
              <td><div align="left">
                <select name="select" id="select">
                  <option value="Public">Public</option>
                  <option value="Private">Private</option>
                </select>
                </div></td>
              </tr>
            

            <tr>
              <td colspan="3">
                <div align="center">
                  <input type="submit" name="button" id="button" value="Upload File" />
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

			if(request.getParameter("button")!=null)
				{
					
				try
				{
			
				 		 Connection con=Dbconnection.getConnection(); 
			      Statement stmt=con.createStatement();

					 String t1=request.getParameter("fileField").trim();
					 String t2=request.getParameter("select").trim();
					String fname=(String)session.getAttribute("fname");
       	  
		  
		  /////////////////////////////
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
		  
		  
		  //////////////////////////////
		

					 
						PreparedStatement pstmt=con.prepareStatement("insert into files values(?,?,?,?,?)");   
						pstmt.setString(1,t1);
						pstmt.setString(2,dot1);
						pstmt.setString(3,fname);
						pstmt.setString(4,"NO");
						pstmt.setString(5,t2);
					
						
						
						
						
						
						 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
					out.println( "<script>alert('Uploaded Successfully');window.location='userpage.jsp';</script>");
				
					}
    
				catch(Exception e)
				{
				out.println("Exception occured" +e);
				}
	}
	
%>
            </div>

		
		
	    <div align="center"></div>
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

