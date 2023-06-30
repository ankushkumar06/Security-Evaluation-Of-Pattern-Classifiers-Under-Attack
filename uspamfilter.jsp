<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*,java.nio.*,java.util.*" errorPage="" %>

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
		<div align="center">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p><img src="applyspamfilter.jpg" width="275" height="183"></p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <%@page import="dbconnection.Dbconnection"%>
          <%
		          	try 
			{
			String files=request.getParameter("id");
//			  File textFile = new File("D:\\joshiprojects\\javaprojects2021\\SecurityEvaluationofPatternClassifiersunderAttack2021\\WebApplication1\\web\\upload\\file1.txt");
    
        String originalFilePath ="C:\\Users\\Admin\\Desktop\\PROJECT2021\\SecurityEvaluationofPatternClassifiersunderAttack2021\\WebApplication1\\web\\upload\\"+files;
        String originalFileContent = "";

    
        BufferedReader reader = null;
        BufferedWriter writer = null;

        //3
        
            //4
            reader = new BufferedReader(new FileReader(originalFilePath));

            //5
            String currentReadingLine = reader.readLine();

            //6
            while (currentReadingLine != null) {
                originalFileContent += currentReadingLine + System.lineSeparator();
                currentReadingLine = reader.readLine();
            }

            //7
            String modifiedFileContent = originalFileContent.replaceAll("123", "***");

            //8
            writer = new BufferedWriter(new FileWriter(originalFilePath));

            //9
            writer.write(modifiedFileContent);
			
                    reader.close();
        

                    writer.close();
					
     Connection con=Dbconnection.getConnection(); 
      Statement stmt=con.createStatement();
     
						PreparedStatement pstmt=con.prepareStatement("update files set ISSPAM_APPLIED='YES' where filename=?");   
						pstmt.setString(1,files);
					
					 pstmt.executeUpdate(); 
								
						
						pstmt.close();  
						con.close(); 
	out.println( "<script>alert('Spam Fillter Applied Successfully');window.location='userpage.jsp';</script>");

        

        } 
			 catch (IOException e) 
			{
	            e.printStackTrace();
	        }
		  %>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>aaaaaaaa</p>
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

