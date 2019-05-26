<%-- 
    Document   : ajax_search
    Created on : 19 May, 2017, 11:28:02 PM
    Author     : lenovo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String name = request.getParameter("name");
    String buffer="";  
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        Statement st=(Statement) con.createStatement();
                
        ResultSet rs=st.executeQuery("select * from skills where subcat like '"+name+"%'");
        while(rs.next())
            {
            buffer=buffer+"'"+rs.getString("subcat")+"',";
            }
        response.getWriter().println(buffer);
    }
    catch (Exception e) {
        e.printStackTrace();
    }
%>