<%-- 
    Document   : rachi
    Created on : 10 May, 2017, 1:33:16 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Konnect.com</title>
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
	<link href="css/signup.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/rachi.css" type="text/css" rel="stylesheet" media="all">
         
	<!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script language="Javascript" src="jquery.js"></script>
        <script src="//www.hscripts.com/js/jquery.js?v=3"></script>
        <script type="text/JavaScript" src="js/state.js"></script>
        <script type="text/JavaScript" src="js/rachi.js"></script>
        <script type="text/JavaScript" src="js/district.js"></script>
        <script type="text/javascript" src="validate.js"></script> 
    <link rel="stylesheet" type="text/css" href="style1.css">
        <script type="text/JavaScript" src='state.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--bootstrap-->
	<script  type="text/java">
		
	</script>
	
        <style>
article{
height:auto;
padding-bottom:0%;
padding-top:4%;
background-image:url("images/logout.png");
background-attachment:fixed;

}
div.pad-top{
padding-top:3%;
}
div.pad-bot{
padding-bottom:3%;
}
.form , .form2{
background-color:rgba(0, 0, 0, 0.25);
padding: 40px;
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
				<a href="rachi.jsp">
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
       <form name="myform" method="post" action="signcheck.jsp">
		   <div class="form">
		    <h2 align="left">Sign Up</h2>
			<hr/>
                      <!--<p align="center" style="color:red;font-size: 18px;padding:10px">
                               <%
                                  /*  if ((session.getAttribute("repeatemail")== null) || (session.getAttribute("repeatemail") == "")) {
                                    }
                                    else{out.print(session.getAttribute("repeatemail"));}*/
                               %>
                           </p>-->
			<div>
                            <table align="left">
                                <tr>
                                    <td id="d31" style="font-size:13px;color:red;"></td>
                                </tr></table>
                           <input type="text" onblur="Demo1()"  autocomplete="off"name="firstname" id="d1"  placeholder="FIRST NAME" class="input" >
     			      <table align="left">
                                <tr>
                                    <td id="d32" style="font-size:13px;color:red;"></td>
                                </tr></table>
                           <input type="text" onblur="Demo2()" autocomplete="off" name="lastname" id="d2" placeholder="LAST NAME" class="input">
                                <table align="left"> <tr>
                                    <td id="d33" style="font-size:13px;color:red;"></td>
                                    </tr></table>
                           <input type="email" onblur="Demo3()" autocomplete="off" name="email"  id="d3" placeholder="EMAIL ADDRESS" class="input" >
                           <table align="left"><tr>
                                    <td id="d34" style="font-size:13px;color:red;"></td>
                               </tr></table>
                           
                            <input type="text" onblur="Demo4()"autocomplete="off" name="phone"  id="d4" placeholder="MOBILE NO." class="input">
                            <table align="left"><tr>
                                    <td id="d35" style="font-size:13px;color:red;"></td>
                               </tr></table>
                            <input type="text" onblur="Demo5()" autocomplete="off"  name="profession" id="d5" placeholder="SCHOOL/COLLEGE/ORG." class="input">
                            <table align="left"> <tr>
                                    <td id="d36" style="font-size:13px;color:red;"></td>
                             </tr></table>
			   <input type="password" onblur="Demo6()" autocomplete="off" name="password" id="d6" placeholder="PASSWORD" class="input" >
                           <table align="left">  <tr>
                                    <td id="d37" style="font-size:13px;"></td>
                                </tr>
                            </table>
			   <input type="password" onblur="Demo7()" autocomplete="off" name="password2" id="d7"  placeholder="RE-ENTER PASSWORD" class="input" >  
                            
   
 

   
 
    <div class='resp_code frms'>
     
      <div id="selection">
        <select id="listBox" name="state" onchange='selct_district(this.value)'></select>
        <select id='secondlist' name="city" ><option value="city">SELECT CITY</option></select>
      </div>
      <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
          <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
      </div>
    </div>
                <hr/>
		<div class="form1" >
                   <!-- <div class="row">
				   <label><h3>Select skills you have</h3></label><br/>
				   <select multiple>
					  <option value="dance">Dance</option>
					  <option value="paint">Paint</option>
					  <option value="acting">Acting</option>
					  <option value="fashion">Fashion Design</option>
					</select>
			   </div>-->
			   <div class="row">
				  <label><h3>Things you have</h3></label>
				  <textarea class="form-control" rows="5" id="comment" autocomplete="off"></textarea>
				</div>
				<div class="row">
				  <label><h3>Description about you</h3></label>
				  <textarea class="form-control" rows="5" id="comment" autocomplete="off"></textarea>
				</div>
			   <div class="row">
				   <label><ins></ins></label>
                                   <input type="submit" value="SIGN UP" class="btn" onclick=" return validateform()">
			   </div>
                </div>
			   <!--<input type="button" value="SIGN UP" class="btn" onclick="">	-->
               </div>		
       

		   </div>
       </form>
   </div>
	
        <div class='pad-top'></div>
	</article>
<!--form-->
<!--footer-->
		<footer >
			<div class="foot">
				<p>Posted by: Prachi Barjatiya</p>
				
				  <p >Contact information: <a href="mailto:prachibarjatiya1221@gmail.com">
				  prachibarjatiya1221@gmail.com</a>.</p>
			</div>
		</footer>
<!--footer-->
</body>
</html>
