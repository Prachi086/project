<%-- 
    Document   : header
    Created on : 7 May, 2017, 2:15:41 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>getKonnect.com</title>
	<!--mobile apps-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--mobile apps-->
	<!--web-fonts-->
	<link href='//fonts.googleapis.com/css?family=Overlock:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Josefin+Slab" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Bad+Script|Courgette|Slabo+27px" rel="stylesheet">
	<!--//web-fonts-->
	<!--css-->
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src=js/scroll.js"></script>
       <script type="text/javascript" src="jquery.js"> </script>
        
        <!--bootstrap-->
<script>
  
        $(document).ready(function(){
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing', function () {
	        window.location.hash = target;
	    });
	});
});
</script>
	<style>
		
		 article{
			height:600px;
			width:100%;
			background-image:url("images/logout.png");
			background-size:cover;
			background-repeat:no-repeat;
			}
			
			.absolute-text1{
				position: absolute;
				width: 100%;
				top: 60%;
				left: -250px;
				text-align: center;
				font-size: 65px;
				color:black;
				font-family: 'Bad Script', cursive;
			}
			
				.row {
					 margin-right: 0px; 
					 margin-left: 0px; 
				}
	</style>
	<style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
	      height:300px;
		  width: 100%;
		  margin: auto;
	  }
	  </style>
	  <style>
		.mono{
		font-size:20px;
		font-family: 'Josefin Slab', serif;
	        color:#00B0FF;
		padding-top:30px;
		
		}
	  </style>
</head> 

<body>
	<!--header-->
	<header>
		<div class="container">
			<div class='row'>
			<div class="col-md-3 " >
                            <a href="index.jsp"><p align="center" class="mono">getKonect</p></a>
				<!--<img  class="mono img-responsive" src="images/mono.png" width=160px height=80px>-->
			</div>
			<div id="nav" class="col-md-6 op font">
				<nav>
					<ul class="nav navbar" style="font-size:18px">								
                                            <li><a href="index.jsp#gallery">Search</a></li>
					    <li><a href="feeds.jsp"> Feeds</a></li>
					    <li><a href="">Contact</a></li>
					</ul>
				</nav>
			</div>
	<%
        if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
        %>
			<div class="but col-md-3 font float-right" style="font-size:18px">
				<a href="login.jsp">
				<div class=" col-md-6 button float-right">
						<p align="center">Log In</p>
				</div>	
				</a>
				<a href="rachi.jsp">
				<div class="col-md-6 button float-right">
					<p align="center">Sign Up</p>
				</div>
				</a>
			</div>
        <%} else {
        %>
                        <div class="but col-md-3 font  ">
                            <div class="icons">
                                <a href="profile.jsp"><div class="tool"><div class="glyphicon glyphicon-user icon"><span class="tooltiptext">profile</span></div></div></a>
                                <div class="tool dropdown "><span class="glyphicon glyphicon-globe icon"><span class="tooltiptext">notification</span></span><div class="dropdown-content">
                                    <p><%String nm=(String)session.getAttribute("first");
                                            out.print("Hello "+nm+"!!" );%><br>
                                             4 search requests found</p>
                                  </div></div>
                                    
                                <a href="home.jsp"><div class="tool"><div class="glyphicon glyphicon-home icon"><span class="tooltiptext">home</div></div></a>
                                <a href="logout.jsp"><div class="tool"><div class="glyphicon glyphicon-log-out icon  "><span class="tooltiptext">logout</span></div></div></a>
                                    
                            </div>   
			</div>
         <% } %>
			</div>	
		</div>
	</header>
        			
	<!--header-->