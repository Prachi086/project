<%-- 
    Document   : writepost
    Created on : 6 May, 2017, 1:48:46 PM
    Author     : lenovo
--%>

<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
      <%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.ResultSet"%>
      <%! int count=0; %>
<%
  
 
   InputStream inputStream=null;
   String emailid=(String)session.getAttribute("emailid");
   String article=request.getParameter("article"); 
       
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
    PreparedStatement st=(PreparedStatement)con.prepareStatement("insert into post values(?,?,?)");
    if(article!=null){
        st.setString(1,emailid);
        st.setBlob(2,inputStream);
        st.setString(3,article);
        st.executeUpdate(); 
        response.sendRedirect("feeds.jsp");
    }
   
    con.close();
    
   
%>
   
     
  
    


