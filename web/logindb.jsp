<%-- 
    Document   : logindb
    Created on : 8 May, 2017, 11:11:39 AM
    Author     : lenovo
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.ResultSet"%>
<%
  
        
        String emailid=request.getParameter("emailid");  
        String password=request.getParameter("password");
        String msg=null;
        
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from tablename1 where email=? and password=?");
        st.setString(1,emailid);
        st.setString(2,password);
        ResultSet rs=st.executeQuery();    
        if(rs.next())
            {
               
               String first=rs.getString(2);
               String last=rs.getString(3);
               session.setAttribute("first",first);
               session.setAttribute("last",last);
               
               session.setAttribute("emailid", emailid);
               
               RequestDispatcher rd=request.getRequestDispatcher("/profile.jsp");  
               rd.forward(request,response);
              //response.sendRedirect("profile.jsp");
               }
        else
           {
                msg="Sorry UserName or Password Error!";
                session.setAttribute("msg", msg); 
                RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");  
                rd.include(request, response);  
            }
         }catch(Exception e){
            System.out.println(e);
        } 
          
out.close();
   
   
%>
     
  
    
