<%-- 
    Document   : feeds
    Created on : 5 May, 2017, 6:57:02 PM
    Author     : lenovo
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  

<html>
<head>
    <%
      response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("emailid")==null)
      response.sendRedirect("login.jsp");

  %> 
    
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
	<link href="css/feeds.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/home.css" type="text/css" rel="stylesheet" media="all">
        
        <!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--bootstrap-->
    
 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">  
 </script>  
 <script type="text/javascript" src="jquery.js"> </script>
<%-- <script type="text/javascript" language="javascript"> 
 $(document).ready(function() {
var stickyNavTop = $('.nav1').offset().top;
 
var stickyNav = function(){
var scrollTop = $(window).scrollTop();
      
if (scrollTop > stickyNavTop) { 
    $('.nav1').addClass('sticky');
} else {
    $('.nav1').removeClass('sticky'); 
}
};
 
stickyNav();
 
$(window).scroll(function() {
  stickyNav();
});
});
 </script>
 <script type="text/javascript" language="javascript"> 
 $(document).ready(function() {
var stickyNavTop = $('.nav2').offset().top;
 
var stickyNav = function(){
var scrollTop = $(window).scrollTop();
      
if (scrollTop > stickyNavTop) { 
    $('.nav2').addClass('sticky');
} else {
    $('.nav2').removeClass('sticky'); 
}
};
 
stickyNav();
 
$(window).scroll(function() {
  stickyNav();
});
});
 </script>
 <script type="text/javascript" language="javascript"> 
 $(document).ready(function() {
var stickyNavTop = $('.middlle').offset().top;
 
var stickyNav = function(){
var scrollTop = $(window).scrollTop();
      
if (scrollTop > stickyNavTop) { 
    $('.middle').addClass('mid');
} else {
    $('.middle').removeClass('mid'); 
}
};
 
stickyNav();
 
$(window).scroll(function() {
  stickyNav();
});
});
 </script>
 --%>
	<style>
            .nav1{
                
                left:0;
            }
            .nav2{
                
                right: 0;
            }
            .sticky {
                top:110px;
  position: fixed;
  max-width: 340px;
}
.mid{
  left:350px;
}
		#lwrdiv{
                        padding-top: 90px;
			height:500px;
			width:100%;	
			/*background:url("images/feeds.jpg");
			background-repeat:no-repeat;*/
			background-size:cover;
			background-position:50% 50%;
                        
         }
         .absolute-text{
             padding-bottom: 200px;
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
	<!--newsletter-->
	<div>
            <div  id="lwrdiv">
                    <%@include file="carousel.jsp"%>
                    
                    
		</div>
	</div>
	<!--newsletter-->
	<!--feeds-->
	<div class="container-fluid feeds">
		<div class="row">
                    <div class="col-md-3 nav1">
                         <%
                            if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
                            %>
                            <%@include file="sidediv.jsp" %>
                            <%
                            }else{
                            %>
                            <%@include file="sidedivwithprofile.jsp" %>
                            <% } %>
                    </div>
                    <div class="col-md-6 middle">
	                <div class="media">
                            <div class="media-body">
                               <h4 class="head media-heading">
                               <label><a  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-pencil"></span> Share an article</a></label>    |       
                               <label><a  data-toggle="modal" data-target="#myModal1"><span class=" glyphicon glyphicon-picture"></span> photo / update</a></label>
                               </h4>
                         <hr>
                            <a data-toggle="modal" data-target="#myModal"><p style="font-size:16px">  Write an article</p></a>
                            </div>
                        </div>
                        <%
                            Blob image = null;
                            byte[ ] imgData = null ;
                            String checkimage=null;
                            String first="";
                            String last="";
                            String email="";
                            String name="";
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
                         PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from post");
                         ResultSet rs=st.executeQuery();
                         rs.afterLast();
                         while(rs.previous()){
                            email=rs.getString(1);
                            PreparedStatement st1=(PreparedStatement) con.prepareStatement("select * from tablename1 where email=?");
                            st1.setString(1,email);
                            ResultSet rs1=st1.executeQuery();
                            while(rs1.next()){
                                first=rs1.getString(2);
                                last=rs1.getString(3);
                                name=first +" "+ last;
                            }
                            image = rs.getBlob(2);
                            if(image==null){
                                request.setAttribute("checkimage",null);
                            }
                            else{
                                
                           request.setAttribute("checkimage","has");
                                imgData = image.getBytes(1,(int)image.length());
                            String encode = Base64.getEncoder().encodeToString(imgData);
                            
                            request.setAttribute("image", encode); 
                            }
                            request.setAttribute("onclickemail",email);
                            request.setAttribute("name",name); 
                            request.setAttribute("about", rs.getString(3)); 
                        %>
            
                        <%@include file="feeds2.jsp" %>
                        <% } %>
						<!--<div class="media">
						  <div class="media-left media-top">
							<img src="img_avatar1.png" class="media-object" style="width:60px">
						  </div>
						  <div class="media-body">
							<h4 class="media-heading">Media Top</h4>
							<p>Lorem ipsum</p>
						  </div>
						</div>
						</div>-->
		    </div>
                    <div class="col-md-3 nav2">
                        <%@include file="sidedivright.jsp"%>
                    </div>
		</div>
	</div>
	<!--feeds-->
        <!-- myModal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
      <%
      if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
      %>
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-body">
              <p style="text-align: center;padding: 30px;font-size: 20px;font-family: 'Josefin Slab', serif;">
              You are not logged in<br/>
              <a href="login.jsp">Please Login</a>
              </p>
              <button style="" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      <!-- Modal content-->
    <%} else {
        %> 
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="media-heading">
              <a data-target="#texthere"><span class="glyphicon glyphicon-pencil"></span> Share an article</a>    |       
              <a href="#new"><span class=" glyphicon glyphicon-picture"></span> photo / update</a>
                                    
              </h4>
										
        </div>
        <form action="writepostfeeds.jsp" method="post" >
        <div class="modal-body" id="texthere" align="center">
            <textarea rows="4" cols="70" name="article" placeholder="Write an article" autofocus></textarea>
      	</div>
        <div class="modal-footer">
            <input type="submit" value="Post" class="btn btn-default">
            <input type="submit" value="Close" class="btn btn-default" data-dismiss="modal">
            
        </div>
        </form>
      </div>
       <!-- Modal content-->
       <% } %>
      
    </div>
    
    </div>
  </div>
        <!-- myModal -->
        
        
        
        
        <!-- myModal1 -->
  
    <div class="modal fade" id="myModal1" role="dialog">
      <div class="modal-dialog">
      <%
      if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
      %>
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-body">
              <p style="text-align: center;padding: 30px;font-size: 20px;font-family: 'Josefin Slab', serif;">
              You are not logged in<br/>
              <a href="login.jsp">Please Login</a>
              </p>
              <button style="" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
      <!-- Modal content-->
    <%} else {
        %> 
        <!-- Modal content-->
        <div class="modal-content">
            <form method="post" enctype="multipart/form-data" action="photopostfeeds.jsp">
          <div class="modal-body">
              <label class="file1">
                    <p style="align:center;padding: 30px;font-size: 20px;font-family: 'Josefin Slab', serif;">
                       Upload Photo
                    </p>
                    <input id="new" type="file" name="photo" style="display:none">   
               </label>
                     
              
          </div>
          <div class="modal-footer">
            <input type="submit" value="Post" class="btn btn-default">
            <input type="submit" value="Close" class="btn btn-default" data-dismiss="modal">
            
        </div>
            </form> 
        </div>
      <!-- Modal content-->
      
      
      
       <% } %>
      
    </div>
    
    </div>
  </div>
  
        <!-- myModal1 -->
      
</body>
</html>