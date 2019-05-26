<%-- 
    Document   : table
    Created on : 19 May, 2017, 1:46:35 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String tabemail=(String)request.getAttribute("tableemail");
String tabcity=(String)request.getAttribute("tablecity");
%>
<!DOCTYPE html>

        
             <div class="row">
                <div class="col-md-2"></div>
                <%
                if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
                %>
                <a  data-toggle="modal" data-target="#myModal"><div class="col-md-4 box "><% 
                    out.print(tabemail);%></div></a>
                <%} else {%>
                <a  href="profileonclick.jsp"><div class="col-md-4 box "><% 
                    out.print(tabemail);%></div></a>
       <%
       } %>
                <div class="col-md-4 box"><% 
                out.print(tabcity);%></div>
                <div class="col-md-2"></div>
             </div>
  
<!-- myModal -->
    <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog">
      
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
    
      
    </div>
    
    </div>
  </div>
        <!-- myModal -->
        