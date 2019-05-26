/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {
     @Override 
public void doGet(HttpServletRequest request,HttpServletResponse response) 
throws IOException,ServletException{
   
    doPost(request,response);
}
public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        String emailid=request.getParameter("emailid");  
        String password=request.getParameter("password");
        String msg=null;
        
         try{  
               response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("emailid")==null)
      response.sendRedirect("login.jsp");

 
    
         
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
               String phone=rs.getString(5);
               String org=rs.getString(6);
               String city=rs.getString(9);
               String description=rs.getString(11);
               String things=rs.getString(10);
               
               session.setAttribute("first",first);
               session.setAttribute("last",last);
               session.setAttribute("org",org);
               session.setAttribute("city",city);
               session.setAttribute("description",description);
               session.setAttribute("things",things);
               session.setAttribute("phone",phone);
               session.setAttribute("emailid", emailid);
               
               mail m=new mail();
               
              RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");  
              rd.forward(request,response);
              //response.sendRedirect("sendingemail.jsp");
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
   
   
}
}
