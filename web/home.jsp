<%-- 
    Document   : home
    Created on : 8 May, 2017, 6:15:30 PM
    Author     : lenovo
--%>


<%@page import="java.util.Base64"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Blob"%>
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
	<style>
		#lwrdiv{
			height:500px;
			width:100%;	
			background:url("images/feeds.jpg");
			background-repeat:no-repeat;
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
                .side{
                    position: fixed;
                    max-width: 300px;
                }
        </style>
</head> 

<body>
	<!--header-->
       
	<header>
		<div class="container">
			<div class='row'>
			<div class="col-md-3 " >
                            <a href="index.jsp"> <p align="center" class="mono">getKonect</p></a>
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
				<a href="sign.html">
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
        <div style="height:90px;"></div>
        <%--<div class="searchdiv">
        <div class="container">
            <div class="row">
            <form action="login" method="post">
            <div class="col-md-5"><input type="text" name="searchbyskill" placeholder="Search people by skill" class="input" required autofocus></div>
            <div class="col-md-5"><input type="text" name="location" placeholder="Enter your location" class="input" required autofocus></div>
            <div class="col-md-2"><input type="submit" value="LOGIN" class="btn"></div>
            </form>
            </div>
           
        </div>
        </div>--%>
        <div>
	<!--feeds-->
	<div class="container-fluid feeds">
		<div class="row">
                    <div class="col-md-3 s">
                        <%@include file="sidedivwithprofile.jsp" %>
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
                            Blob image1= null;
                            byte[ ] imgData1 = null ;
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
                            image1= rs.getBlob(2);
                            if(image1==null){
                                request.setAttribute("checkimage",null);
                            }
                            else{
                                
                           request.setAttribute("checkimage","has");
                                imgData1= image1.getBytes(1,(int)image1.length());
                            String encode = Base64.getEncoder().encodeToString(imgData1);
                            
                            request.setAttribute("image", encode); 
                            }
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
                    <div class="col-md-3">
                         <%@include file="sidedivright.jsp" %>
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