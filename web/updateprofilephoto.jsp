<%-- 
    Document   : photo
    Created on : 21 Oct, 2016, 8:34:29 PM
    Author     : lenovo
--%>


<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
      <%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.ResultSet"%>
<%
   
 
   InputStream inputStream=null;
   Part filePart= request.getPart("profileimage");
   
   String emailid=(String)session.getAttribute("emailid");
   if(filePart!=null)
   {
       inputStream=filePart.getInputStream();
   }
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
    PreparedStatement st=(PreparedStatement)con.prepareStatement("select * from image where email=?");
    st.setString(1,emailid);
    ResultSet rs=st.executeQuery();    
    if(rs.next())
    {
        PreparedStatement st1=(PreparedStatement)con.prepareStatement("update image set image=? where email=?");
        
        if (inputStream!=null)
        {          
           st1.setBlob(1,inputStream);
           st1.setString(2,emailid);
            st1.executeUpdate();
        }         
       
    }
    else{
        PreparedStatement st2=(PreparedStatement) con.prepareStatement("insert into image values(?,?)");
        st2.setString(1,emailid);
        st2.setBlob(2,inputStream);
        
       
        st2.executeUpdate();  
    }
    con.close();
    response.sendRedirect("profile.jsp");
   
%>
   
     
  
    
