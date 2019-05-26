<%-- 
    Document   : profileonclick
    Created on : 10 May, 2017, 3:05:01 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:useBean id="u" class="profileonclick" scope="session"></jsp:useBean>  --%>
<!DOCTYPE html>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%! String first = null;
    String last = null;
    String phone = null;
    String org = null;
    String city = null;
    String things = null;
    String description = null; %>
<% 
    String Email="prachi.barjatiya@gmail.com";
    response.setContentType("text/html");
    Blob image = null;
    byte[ ] imgData = null ;
    String photo="";
    
try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from image where email=?");
        st.setString(1,Email);
        
        ResultSet rs=st.executeQuery();    
        if(rs.next())
        {   image = rs.getBlob(2);
            imgData = image.getBytes(1,(int)image.length());
            photo="photo";
            String encode = Base64.getEncoder().encodeToString(imgData);
            request.setAttribute("imgBase", encode);
            request.setAttribute("photo",photo);
        } 
        else {
            
            
        }
        PreparedStatement st1=(PreparedStatement) con.prepareStatement("select * from tablename1 where email=?");
        st1.setString(1,Email);
        
        ResultSet rs1=st1.executeQuery();    
        if(rs.next())
        {  
            first = rs1.getString(2);
            last = rs1.getString(3);
            phone = rs1.getString(5);
            org = rs1.getString(6);
            city = rs.getString(8);
            things = rs1.getString(9);
            description = rs1.getString(10);
        } 
        else {
            
            
        }
} catch (Exception e) {
out.println("Image Display Error=" + e.getMessage());
return;
}
%>

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
        <link href="css/profile.css" type="text/css" rel="stylesheet" media="all">
	<!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--bootstrap-->
	<style>
		.mono{
		font-size:20px;
		font-family: 'Josefin Slab', serif;
	        color:#00B0FF;
		padding-top:30px;
		}
                
                .file1 [type="file"] {
                cursor: inherit;
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
                                    <a href="home.jsp"><div class="tool"><div class="glyphicon glyphicon-home icon"><span class="tooltiptext">home</div></div></a>
                                <a href="logout.jsp"><div class="tool"><div class="glyphicon glyphicon-log-out icon  "><span class="tooltiptext">logout</span></div></div></a>
                                    
                            </div>   
			</div>
         <% } %>
			</div>	
		</div>
	</header>
        			
	<!--header-->
	
        <!--top-banner-->
        <article>
            <div class="container">
                <div class="row">
                    <div class="col-md-4  profile" style="padding-left:0px;padding-right: 0px;border-style: double;border-color: white;">
                        <%
                           if ((request.getAttribute("photo")== null) || (request.getAttribute("photo") == "")) {
                        %>
                        <p><img src="images/white.png" /></p>
                        
                         <%
                                    }
                                    else{
                          %>
                   <%--<p><img src="data:image/jpeg;base64,${imgBase}" /></p>--%>
                        
                             <% }
                               %>
                    
                    </div>
                    <div class="col-md-8 header-right name" >
                        
                         <% 
                           
                           out.print(first+ " "+last );
                          %>
                    </div>
                </div>
            </div>
        </article>
        <!--top-banner-->
        <!--content-->
        <div class="container-fluid content">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8 ">
                            <div class="media">
				<div class="media-body mid ">
                                    <h4 class="media-heading topcontent">
                                        <% 
                                            
                                            out.print(description);
                                            %> <br><br>
                                        <%
                                            out.print("Went to "+org +" ,"+city);
                                        %> 
                                    </h4>
                                    
                                </div>
   			    </div>
                            
       		        </div>
			<div class="col-md-2"></div>
		</div>
                <div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
                            <div class="media">
				<div class="media-body">
                                    <h4 class="media-heading othercontent">Contact :</h4>
                                </div><br>
                                <div class="value">
				<div class="media-left media-top">
                                    <img src="images/contact.png" class="media-object" style="width:40px">
				</div>
				<div class="media-body">
                                    <p ><% 
                                            
                                            out.print("(+91)"+phone);
                                        %> </p>
				</div>
                                </div>
                                <hr>
                                <div class="value">
				<div class="media-left media-top">
                                    <img src="images/email.png" class="media-object" style="width:40px">
				</div>
				<div class="media-body">
                                    <a href="mailto:<% 
                                            out.print(Email);%> ">
                                        <p ><% 
                                            out.print(Email);
                                            %> </p></a>
				</div>
                                </div>
			    </div>
       		        </div>
			<div class="col-md-2"></div>
		</div>
                <div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
                            <div class="media">
				<div class="media-body">
                                    <h4 class="media-heading othercontent">Other Details :</h4>
                                </div><br>
                                <div class="value">
				<div class="media-body">
                                    <p ><% 
                                            out.print(things);
                                        %> </p>
				</div>
                                </div>
                                
			    </div>
       		        </div>
			<div class="col-md-2"></div>
		</div>
                <div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
                            <div class="media">
				<div class="media-body">
                                    <h4 class="media-heading othercontent">Posts :</h4>
                                </div><br>
                                <div class="value" style= "background-color: #f3f3f3;">
			
                                    <p style="background-color: #f3f3f3;"> 
                                           <%
                            
                         String checkimage=null;
                         Blob image1 = null;
                         byte[ ] imgData1 = null ;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con1=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
                         PreparedStatement st1=(PreparedStatement) con1.prepareStatement("select * from post where email=?");
                         st1.setString(1,Email);
                         ResultSet rs1=st1.executeQuery();
                         rs1.afterLast();
                         while(rs1.previous()){      
                            String name=first +" "+ last;
                            image1 =rs1.getBlob(2);
                            if(image1==null){
                                request.setAttribute("checkimage1",null);
                            }
                            else{
                                
                            request.setAttribute("checkimage1","has");
                            imgData1 = image1.getBytes(1,(int)image1.length());
                            String encode1 = Base64.getEncoder().encodeToString(imgData1);
                            
                            request.setAttribute("image", encode1); 
                            }
                            request.setAttribute("name",name); 
                            request.setAttribute("about", rs1.getString(3)); 
                        %>
            
                        <%@include file="postprofile.jsp" %>
                        <% } %>
                                         </p>
				
                                </div>
                                
			    </div>
       		        </div>
			<div class="col-md-2"></div>
		</div>
	</div>
	<!--content-->
        
 
    
      <!-- Modal content-->
      </div>
    </div>
      </body>
</html>