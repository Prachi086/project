<%-- 
    Document   : login
    Created on : 5 May, 2017, 5:18:14 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>getKonnect.com</title>
	<!--mobile apps-->
<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>     
 
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
	<link href="css/log.css" type="text/css" rel="stylesheet" media="all">
	<!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <!--bootstrap-->
<style>
article{
height:auto;
padding-bottom:0%;
padding-top:4%;
background-image:url("images/logout.png");
background-attachment: fixed;

}
div.pad-top{
padding-top:10%;
}
div.pad-bot{
padding-bottom:10%;
}
.form , .form2{
background-color:rgba(0, 0, 0, 0.25);

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
 <BODY onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<!--header-->
	<header>
		<div class="container">
			<div class='row'>
			<div class="col-md-3 " >
                            <a href="index.jsp"><p align="center" class="mono">getKonect</p></a>
				<!--<img  class="mono img-responsive" src="images/mono.png" width=160px height=80px>-->
			</div>
			<div class="col-md-6 op font">
				<nav>
					<ul class="nav navbar" style="font-size:18px">								
								<li><a href="index.jsp#gallery">Search</a></li>
								<li><a href="feeds.jsp"> Feeds</a></li>
								<li><a href="">Contact</a></li>
					</ul>
				</nav>
			</div>
			<div class="but col-md-3 font float-right" style="font-size:18px">
				<a href="login.jsp">
				<div class=" col-md-6 button float-right">
						<p align="center">Log In</p>
				</div>	
				</a>
				<a href="sign.html">
				<div class="col-md-6 button float-right">  
					<p align="center">Sign Up</p>
				</div>
				</a>
			</div>

			</div>	
		</div>
	</header>
	<!--header-->
<!--form-->
   <article>
	<div class='pad-top'></div>
            <div align="center" class='bgimage'>		   
		   <div class="form">
		    <h2 align="left">Login</h2>
			<hr/>
			<form action="login" method="post">
                           <p align="center" style="color:red;font-size: 18px;padding:10px">
                               <%
                                    if ((session.getAttribute("msg")== null) || (session.getAttribute("msg") == "")) {
                                    }
                                    else{out.print(session.getAttribute("msg"));}
                               %>
                           </p>
			   <input type="text" autocomplete="off" name="emailid" placeholder="EMAIL ID" class="input" required autofocus><br/><br/>
			   <input type="password" autocomplete="off" name="password" placeholder="PASSWORD" class="input" required autofocus><br/>
			   <br/>
			   <br/>
			   <div class="row">
				   <label><ins>Forget Password?</ins></label>
				   <input type="submit" value="LOGIN" class="btn">
			   </div>
			   <!--<input type="button" value="SIGN UP" class="btn" onclick="">	-->
			</form>
		   </div>
		   <div class="form2" align="center">
				<div class="row">
				   <label>Have not joined konnect yet?</label>
				   <a href="sign.html">
				   <input style="background-color:#F0F0F0" type="button" value="SIGN UP" class="btn" onclick="">
					</a>
			   </div>
		   </div>
            </div>
	<div class='pad-top'></div>
	</article>
<!--form-->
<!--footer-->
<%@include file="footer.jsp"%>
	<!--footer-->
       
</body>
</html>