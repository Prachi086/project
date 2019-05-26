<%-- 
    Document   : insertrequest
    Created on : 19 May, 2017, 3:57:19 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

        response.setContentType("text/html");  
        
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        String subcat= request.getParameter("skills");
        String email=(String)session.getAttribute("emailid");
        String tableemail=null;
        int i=0;
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into addrequest values(?,?,?,?)");
        st.setString(1,email);
        st.setString(2,subcat);
        st.setString(3,state);
        st.setString(4,city);
        st.executeUpdate(); 
         st.executeUpdate();  
               RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
               rd.forward(request,response);
}catch (Exception e2) {
   
}  
          out.close();    
    
        %>