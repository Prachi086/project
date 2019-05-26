<%-- 
    Document   : carousel
    Created on : 8 May, 2017, 11:12:43 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
                  height:410px;
		  width: 100%;
		  margin: auto;
	  }
          .side-wrapper{
              position: relative;
          }
          .viewbutton{
              position:absolute;
          }
	  </style>
    </head>
    <body>
        <div class="slide-wrapper">
       <div id="myCarousel" class="carousel slide" data-ride="carousel">
			
			<ol class="carousel-indicators">
			  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			  <li data-target="#myCarousel" data-slide-to="1"></li>
			  <li data-target="#myCarousel" data-slide-to="2"></li>
			  <li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			
			<div class="carousel-inner" role="listbox">
			  <div class="item active">
				<img src="images/main.jpg" alt="Konnect" width="100%" height="345">
				
                                
			  </div>

			  <div class="item ">
				<img src="images/feeds.jpg" alt="Konnect" width="100%" height="345">
                                
			  </div>
			</div>
			 <%-- <div class="item">
				<img src="img_flower.jpg" alt="Flower" width="460" height="345">
			  </div>

			  <div class="item">
				<img src="img_flower2.jpg" alt="Flower" width="460" height="345">
			  </div>
			</div> --%>
			

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			  <span class="sr-only">Next</span>
			</a>
                        
		  </div>
                      <a href="newsletter.jsp">   <div class="viewbutton">
                                <p class="buttontext">View All</p>
                          </div></a>
        </div>
    </body>
</html>
