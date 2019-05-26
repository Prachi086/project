<%-- 
    Document   : feeds2
    Created on : 7 May, 2017, 9:49:55 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--<jsp:useBean id="u" class="profileonclick"></jsp:useBean>  --%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/feeds2.css" type="text/css" rel="stylesheet" media="all">
        
    </head>
    <body>
      <% String onclickemail=(String)request.getAttribute("onclickemail");
         session.setAttribute("onclickemail",onclickemail);%>
        
      <%
         if ((request.getAttribute("checkimage") == null) || (session.getAttribute("checkimage") == "")) {
       %>
       <div class="media" >
            <div class="media-body">
                <%--    <jsp:setProperty property="email" value="<%=onclickemail %>" name="u"/>  --%>
                <div class="row" style="padding-bottom: 0px;">
                    <a href="profileonclick.jsp"><h4 class="media-heading heading col-md-9" ><% out.print(request.getAttribute("name")); %></h4></a>
                <h6 class="media-heading subheading col-md-3"><% out.print("shared an article"); %></h6>
                </div>
                <hr>
                <p class="status" style="font-family: 'Bad Script', cursive;"><% out.print(request.getAttribute("about")); %></p>
            </div>
	</div>
            <%
                }else{
            %>
           <div class="media" >      
           <div class="media-body"  >
                <div class="row" style="padding-bottom: 0px;">
                    <a href="profileonclick.jsp"><h4 class="media-heading heading col-md-9"><% out.print(request.getAttribute("name")); %></h4></a>
                <h6 class="media-heading subheading col-md-3"><% out.print("shared a photo"); %></h6>
                </div>
                <hr>
                <p class="box" ><img class="photo" src="data:image/jpeg;base64,${image}"></p>
            </div>
	</div>
                    
            <% }
            %>
						
    </body>
</html>
