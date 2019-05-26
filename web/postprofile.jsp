<%-- 
    Document   : postprofile
    Created on : 8 May, 2017, 4:16:51 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/feeds2.css" type="text/css" rel="stylesheet" media="all">
        <style>
            *{
                font-family: 'Josefin Slab', serif;
            }
        </style>
    </head>
    <body>
      <%
         if ((request.getAttribute("checkimage") == null) || (session.getAttribute("checkimage") == "")) {
       %>
       <div class="media" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: white;width:700px;margin-left:30px;border-radius:0px;">
            <div class="media-body">
                <div class="row" style="padding-bottom: 0px;">
                <h4 class="media-heading heading col-md-9" ><% out.print(request.getAttribute("name")); %></h4>
                <h6 class="media-heading subheading col-md-3"><% out.print("shared an article"); %></h6>
                </div>
                <hr>
                <p class="status"><% out.print(request.getAttribute("about")); %></p>
            </div>
	</div>
           
            <%
                }else{
            %>
            <div class="media" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);background-color: white;width:700px;margin-left:30px;border-radius:0px;">      
           <div class="media-body">
                <div class="row" style="padding-bottom: 0px;">
                <h4 class="media-heading heading col-md-9"><% out.print(request.getAttribute("name")); %></h4>
                <h6 class="media-heading subheading col-md-3"><% out.print("shared a photo"); %></h6>
                </div>
                <hr>
          <%-- <p class="box" ><img class="photo" src="data:image/jpeg;base64,${images}"></p>--%>
           
            </div>
	</div>
                    
            <% }
            %>
            <div style="height:30px;"></div>
						
    </body>
</html>

