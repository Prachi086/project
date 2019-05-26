/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class search extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        HttpSession session=request.getSession();
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        String state=request.getParameter("state");
        String city=request.getParameter("city");
        String subcat= request.getParameter("cb");
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        com.mysql.jdbc.Connection con=(com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        com.mysql.jdbc.PreparedStatement st=(com.mysql.jdbc.PreparedStatement) con.prepareStatement("select emailid from skills where subcat=? and city=?");
        st.setString(1,subcat);
        st.setString(2,city);
        ResultSet rs=st.executeQuery();  

     if(rs.next())
     {
        
            String emailid=rs.getString(1);
            out.println(emailid);
            /*String details="select name,profilepic,description from user where emailid=?";
             PreparedStatement ps2=con.prepareStatement(details);  
             ps2.setString(1, "emailid");
               
               ResultSet rs2=ps2.executeQuery();   
                    while(rs2.next())
                    {*/
                 out.println("<html>");
                 out.println("<body>");
                 out.println("<table>");
                 out.println("<tr>");
                 out.println("<td>"+rs.getString(1)+"</td>");
                 out.println("<td>"+rs.getString(2)+"</td>");
                 out.println("<td>"+rs.getString(4)+"</td>");
                 out.println("</tr>");       
                 out.println("</table>");
                 out.println("</body>");
                 out.println("</html>");
              
            }
    else
     {
         out.println("no result found");//RequestDispatcher rd=request.getRequestDispatcher("addrequest");  
         
     
     }
     
         
        }
        catch(Exception e)
        {
        out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
