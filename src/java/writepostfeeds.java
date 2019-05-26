/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class writepostfeeds extends HttpServlet {
    @Override 
public void doGet(HttpServletRequest request,HttpServletResponse response) 
throws IOException,ServletException{
   
    doPost(request,response);
}
    
public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        String article=request.getParameter("article"); 
        InputStream inputStream=null;
        String emailid=(String)session.getAttribute("emailid");
       
        try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("insert into post values(?,?,?)");
        st.setString(1,emailid);
        st.setBlob(2,inputStream);
        st.setString(3,article);
        st.executeUpdate(); 
        RequestDispatcher rd=request.getRequestDispatcher("/feeds.jsp");  
        rd.forward(request,response);

             
}catch (Exception e2) {
    System.out.println(e2);
}  
          out.close();  
         /* RequestDispatcher rd=request.getRequestDispatcher("/feeds.jsp");  
        rd.forward(request,response);*/
}

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
}  
       