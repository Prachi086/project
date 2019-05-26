<%-- 
    Document   : insertskills
    Created on : 21 May, 2017, 12:41:06 AM
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
        
        String state=(String)request.getAttribute("sstate");
        String city=(String)request.getAttribute("scity");
        String email=(String)request.getAttribute("semail");
        for(int i=1;i<=4;i++){
        String skill[i]=request.getParameter("cb[" +i+"]");
        }
        
        int i=0;
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into skills values(?,?,?,?)");
        st.setString(1,email);
        st.setString(3,state);
        st.setString(4,city);
        st.executeUpdate(); 
         
               RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
               rd.forward(request,response);
}catch (Exception e2) {
   
}  
          out.close();    
    
        %>
