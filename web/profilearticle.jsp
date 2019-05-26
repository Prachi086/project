<%-- 
    Document   : profilearticle
    Created on : 11 May, 2017, 7:18:19 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<style>
article{
width: 100%;
background-image:url("images/cover.jpg");
background-repeat:no-repeat;
background-size:cover;

}
</style>
<!DOCTYPE html>
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
                    <p><img src="data:image/jpeg;base64,${imgBase}" /></p>
                        
                             <% }
                               %>
                    <div class="absolute-icon"><a  data-toggle="modal" data-target="#Modal"><span style="font-size:30px;color:blue;" class="icon glyphicon glyphicon-picture"></span></a></div>
                    </div>
                    <div class="col-md-8 header-right name" >
                        
                         <% 
                           String first=(String)session.getAttribute("first");
                           String last=(String)session.getAttribute("last");
                           out.print(first+ " "+last );
                          %>
                    </div>
                </div>
            </div>
        </article>