/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.mysql.jdbc.Connection;
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


public class posts extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from post");
        
        ResultSet rs=st.executeQuery();    
        if(rs.next())
            {
               String email=rs.getString(2);
               String image=rs.getString(3);
               String about=rs.getString(4);
               request.setAttribute("email",email);
               request.setAttribute("image",image);
               request.setAttribute("about",about);
               
               RequestDispatcher rd=request.getRequestDispatcher("newjsp.jsp");  
               rd.forward(request,response);
              //response.sendRedirect("profile.jsp");
               }
        else
           {
                out.print("Sorry UserName or Password Error!");  
                RequestDispatcher rd=request.getRequestDispatcher("/login.html");  
                rd.include(request, response);  
            }
         }catch(Exception e){
            System.out.println(e);
        } 
          
out.close();
   
   
}
}