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
.style1 {
	font-size: 24px;
	font-weight: bold;
}
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
						<div id="gtco-logo"><a href="index.html"><h5></h5></div>
					</div>

					<div class="col-xs-10 text-right menu-1">
			<h3>Security Evaluation of Pattern Classifiers under Attack</h3>
						<ul>
							<li class="active"><a href="index.jsp">Home</a></li>
							<li><a href="about.jsp">About</a></li>
							<li class="has-dropdown">
								<a href="#">Login</a>
								<ul class="dropdown">
									<li><a href="adminlogin.jsp">Admin</a></li>
									<li><a href="userlogin.jsp">User</a></li>
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
-->							<!--<li><a href="portfolio.html">Portfolio</a></li>
							<li><a href="contact.html">Contact</a></li>-->
						</ul>
					</div>
				</div>
				
			</div>
		</nav>

		 <form action="" method="post">
                        
                        <table width="83%" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td class="formhead"><div align="left">Administrator Login</div></td>
    <td width="29%" rowspan="4"><img src="images/login.jpg" width="268" height="188" /></td>
  </tr>
  <tr>
    <td width="21%"><div align="right"><strong>Email Id</strong></div></td>
    <td width="1%">&nbsp;</td>
    <td width="49%"><div align="left">
      <input type="text" name="textfield" id="textfield">
    </div></td>
    </tr>
  <tr>
    <td><div align="right"><strong>Password</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="left">
      <input type="password" name="textfield2" id="textfield2">
    </div></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
      <div align="left">
        <input name="Submit" type="submit" value="Submit" />      
        <input name="Submit2" type="reset" value="Reset" />    
        <a href="forgotpwd.jsp" class="style1">Forgot Password ?</a></div></td>
  </tr>
</table>
           <span class="col-md-8 col-md-offset-2 gtco-heading text-center">
	                   
</p>
                        </span>
	  </form>	
      
      <%@page import="dbconnection.Dbconnection"%>
      <%
		 if(request.getParameter("Submit")!= null)
	{
try
{

   
     Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
     // String type=request.getParameter("select").trim();
   
       
      //String pid=request.getParameter("textfield2").trim();
   String u=request.getParameter("textfield").trim();
	
	  String p=request.getParameter("textfield2").trim();
	  out.println(u);
      
	  
	
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

