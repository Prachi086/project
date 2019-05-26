<%-- 
    Document   : photoblob
    Created on : 6 May, 2017, 10:37:07 PM
    Author     : lenovo
--%>
<%@page import="java.util.Base64"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
    String emailid=(String)session.getAttribute("emailid");
    response.setContentType("text/html");
    OutputStream o = response.getOutputStream();
    Blob image = null;
    byte[ ] imgData = null ;
try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from image where email=?");
        st.setString(1,emailid);
        
        ResultSet rs=st.executeQuery();    
        if(rs.next())
        {   image = rs.getBlob(1);
            imgData = image.getBytes(1,(int)image.length());
            String encode = Base64.getEncoder().encodeToString(imgData);
            request.setAttribute("imgBase", encode);
        } 
        else {
            out.println("image not found for given id>");
            return;
        }
} catch (Exception e) {
out.println("Image Display Error=" + e.getMessage());
return;
}
%>


