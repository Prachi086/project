<%-- 
    Document   : newjsp
    Created on : 18 May, 2017, 8:22:11 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
     response.setContentType("text/html");  
      

        int id=0;
        String firstname=request.getParameter("firstname");  
        String lastname=request.getParameter("lastname");  
        String email=request.getParameter("email");  
        String phone=request.getParameter("phone");  
        String profession=request.getParameter("profession");  
        String password=request.getParameter("password");  
        String statename=request.getParameter("state");
        String cityname=request.getParameter("city");
        String things=request.getParameter("things");  
        String description=request.getParameter("description"); 
        String repeatemail=null;
        
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st1=(PreparedStatement) con.prepareStatement("select * from tablename1 where email=? ");
        st1.setString(1,email);
        ResultSet rs=st1.executeQuery();
        if(rs.next()){
            repeatemail="This email seems to be already registered!!";
            session.setAttribute("repeatemail", repeatemail); 
            RequestDispatcher rd=request.getRequestDispatcher("rachi.jsp");  
            rd.forward(request,response);
        }
        else{
        PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into tablename1 values(?,?,?,?,?,?,?,?,?,?,?)");
        st.setInt(1,id++);
        st.setString(2,firstname);
        st.setString(3,lastname);
        st.setString(4,email);
        st.setString(5,phone);
        st.setString(6,profession);
        st.setString(7,password);
        st.setString(8,statename);
        st.setString(9,cityname);
        st.setString(10,things);
        st.setString(11,description);
       
st.executeUpdate();  
 
               request.setAttribute("skillemail", email);
               request.setAttribute("skillstate", statename);
               request.setAttribute("skillcity", cityname);
               RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
               rd.forward(request,response);}
}catch (Exception e2) {
    System.out.println(e2);
}  
          out.close();  
 %>



