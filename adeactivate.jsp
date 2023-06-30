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
							<li class="active"><a href="adminpage.jsp">Home</a></li>
							<li><a href="aregusers.jsp">Registerred Users</a></li>
							<li class="has-dropdown">
								<a href="#">Blocked Users</a>
								<ul class="dropdown">
									<li><a href="aattackers.jsp">Attackers</a></li>
									<li><a href="aactivate.jsp">Activate</a></li>
   									<li><a href="adeactivate.jsp">De-Activate</a></li>
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
		<p>&nbsp;</p>
		<p align="center">
		  <%@page import="dbconnection.Dbconnection"%>
          <%@page import ="java.sql.*"%>
          <%@page import="java.util.*,java.io.*"%>
          <%   
                                          
try
{

   Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();

      ResultSet rs;
      ResultSetMetaData rmd;
	 
       
//        String email=(String)session.getAttribute("Emailid");out.println(email);
	 
	   String s1="select * from logfile  " ;
	
     rs = stmt.executeQuery(s1);
      
		out.println("<body><h1 style='color:red'><div align=center><strong><span class=formhead> Users Who Access Private Files</span></strong></div></h1></body>");
      
        out.println("<table border=2 align=center padding=20px  width=90% bordercolor=lightblue><tr style='color:black'>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5 font color=blue>"+rmd.getColumnName(i)+"</font></b></td>");
			//else
			//out.println("<td><b><font size=5 font color=blue>Keep/Remove</font></b></td>");
        }
        String s="",s3="",s2="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					 if(x==1)
					 {
						 s3=s;
						 out.println("<td><b>"+s+"</b></td>");

					 }
					  else
					  {
					                 out.println("<td><b>"+s+"</b></td>");
					  }
					  
					  
                 }   
                     
					 out.println("<td><b><a href=adeactivate1.jsp?d="+s3+">Deactivate Account<a/>");
					  //out.println("<b><a href=dproduct.jsp?d="+s+"><p style='color:#000'><img src=deleteicon.jpg width=50 height=50 ></img></p></b><a/></td>");
					   //out.println("<td><b><a href=removes1.jsp?d="+s2+"><img src=deleteicon.jpg width=50 height=50></img></b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%>
&nbsp; </p>
	  <p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>addd
		</p>
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

