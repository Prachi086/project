<%-- 
    Document   : logout
    Created on : 3 May, 2017, 4:27:57 PM
    Author     : lenovo
--%>

<%
session.setAttribute("emailid", null);
session.setAttribute("first",null);
               session.setAttribute("last",null);
               session.setAttribute("org",null);
               session.setAttribute("city",null);
               session.setAttribute("description",null);
               session.setAttribute("things",null);
               session.setAttribute("phone",null);
               session.setAttribute("emailid",null);
                session.setAttribute("some_token",null);


 
      response.sendRedirect("login.jsp");
    %> 

