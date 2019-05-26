<%-- 
    Document   : sidediv
    Created on : 8 May, 2017, 10:54:50 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>

<%@page import="java.util.Base64"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
    String emailid=(String)session.getAttribute("emailid");
    response.setContentType("text/html");
    Blob image = null;
    byte[ ] imgData = null ;
    String photo="";
try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from image where email=?");
        st.setString(1,emailid);
        
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
} catch (Exception e) {
out.println("Image Display Error=" + e.getMessage());
return;
}
%>
<!DOCTYPE html>
<div class="side">
                            
                        <div class="div" >
                        <%
                           if ((request.getAttribute("photo")== null) || (request.getAttribute("photo") == "")) {
                        %>
                        <p><img class="img" src="images/white.png" /></p>
                        
                         <%
                                    }
                                    else{
                          %>
                         <p><img class="img" src="data:image/jpeg;base64,${imgBase}" /></p>
                        
                             <% }
                               %>
                    
                        </div>
                               
                               <div class="name">
                                   <p ><% 
                           String firstname=(String)session.getAttribute("first");
                           String lastname=(String)session.getAttribute("last");
                           out.print(firstname+ " "+lastname );
                               %></p>
                               </div>
                               
                               <div class="search">
                                   <p><a href="index.jsp#gallery"><span class="glyphicon glyphicon-search"></span></a><br><br>
                                       Search People<br>
                                       Grow your connection</p>
                               </div>
                            
                        
                    </div>