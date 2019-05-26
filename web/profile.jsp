<%-- 
    Document   : profile
    Created on : 24 Apr, 2017, 6:47:18 PM
    Author     : lenovo
--%>


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
			<div class="col-md-6  font">
				<nav>
					<ul class="nav navbar" style="font-size:18px">								
								<li><a href="index.jsp#gallery">Search</a></li>
								<li><a href="feeds.jsp"> Feeds</a></li>
								<li><a href="">Contact</a></li>
					</ul>
				</nav>
			</div>
			 <div class="but col-md-3 font  ">
                            <div class="icons">
                                <a href="profile.jsp"><div class="tool"><div class="glyphicon glyphicon-user icon"><span class="tooltiptext">profile</span></div></div></a>
                                <div class="tool dropdown " onclick="fun()"><span class="glyphicon glyphicon-globe icon"><span class="tooltiptext">notification</span></span><div class="dropdown-content">
                                    <p><%String nm=(String)session.getAttribute("first");
                                            out.print("Hello "+nm+"!!" );%><br>
                                             4 search requests found</p>
                                  </div></div>
                                 
                                <a href="home.jsp"><div class="tool"><div class="glyphicon glyphicon-home icon"><span class="tooltiptext">home</div></div></a>
                                <a href="logout.jsp"><div class="tool"><div class="glyphicon glyphicon-log-out icon  "><span class="tooltiptext">logout</span></div></div></a>
                                    
                            </div>   
			</div>

			</div>	
		</div>
	</header>
	<!--header-->
        <!--top-banner-->
        <%@include file="profilearticle.jsp"%>
        <!--top-banner-->
        <!--content-->
        <div class="container-fluid content">
		<div class="row">
			<div class="col-md-2"></div>
                        <div class="col-md-8 " >
                            <div class="media" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
				<div class="media-body mid ">
                                    <h4 class="media-heading topcontent">
                                        <% 
                                            String description=(String)session.getAttribute("description");
                                            out.print(description);
                                            %> <br><br>
                                        <% 
                                            String org=(String)session.getAttribute("org");
                                            String city=(String)session.getAttribute("city");
                                            out.print("Went to "+org +" ,"+city);
                                        %> 
                                    </h4>
                                    <div class="absolute-icon"><a  data-toggle="modal" data-target="#Modal"><span style="font-size:20px;color:blue;" class="icon glyphicon glyphicon-pencil"></span></a></div>
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
                                <div class="value" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
				<div class="media-left media-top">
                                    <img src="images/contact.png" class="media-object" style="width:40px">
				</div>
				<div class="media-body">
                                    <p ><% 
                                            String phone=(String)session.getAttribute("phone");
                                            out.print("(+91)"+phone);
                                        %> </p>
				</div>
                                </div>
                                <hr>
                                <div class="value" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
				<div class="media-left media-top">
                                    <img src="images/email.png" class="media-object" style="width:40px">
				</div>
				<div class="media-body">
                                    <a href="mailto:<% String email=(String)session.getAttribute("emailid");
                                            out.print(email);%> ">
                                        <p ><% 
                                            out.print(email);
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
                                <div class="value" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
				<div class="media-body">
                                    <p ><% 
                                            String things=(String)session.getAttribute("things");
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
                                <div class="value" style= "background-color:#5ce8e0;">
			
                                    <p style="background-color:#5ce8e0;"> 
                                           <%
                            
                         
                         Blob image1 = null;
                         byte[ ] imgData1 = null ;
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection con1=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
                         PreparedStatement st1=(PreparedStatement) con1.prepareStatement("select * from post where email=?");
                         st1.setString(1,emailid);
                         ResultSet rs1=st1.executeQuery();
                         rs1.afterLast();
                         while(rs1.previous()){      
                            String name=first +" "+ last;
                            image1 =rs1.getBlob(2);
                            if(image1==null){
                                request.setAttribute("checkimage",null);
                            }
                            else{
                                
                            request.setAttribute("checkimage","has");
                            imgData1 = image1.getBytes(1,(int)image1.length());
                            String encode1 = Base64.getEncoder().encodeToString(imgData1);
                            
                            request.setAttribute("images", encode1); 
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
        
 
    <!--Modal-->           
    <div class="modal fade" id="Modal" role="dialog">
      <div class="modal-dialog">
<!-- Modal content-->
        <div class="modal-content">
            <form method="post" enctype="multipart/form-data" action="updateprofilephoto.jsp">
          <div class="modal-body">
              <label class="file1">
                    <p style="align:center;padding: 30px;font-size: 20px;font-family: 'Josefin Slab', serif;">
                       Upload Photo
                    </p>
                    <input type="file" name="profileimage" style="display:none">   
               </label>
                     
              
          </div>
          <div class="modal-footer">
            <input type="submit" value="Post" class="btn btn-default">
            <input type="submit" value="Close" class="btn btn-default" data-dismiss="modal">
            
        </div>
            </form> 
        </div>
      <!-- Modal content-->
      </div>
    </div>
      </body>
</html>