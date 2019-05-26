/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
 
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class photo extends HttpServlet {
     
    
    public void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        HttpSession session=request.getSession();
        String emailid = (String)session.getAttribute("emailid");
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
          
        try {
        Class.forName("com.mysql.jdbc.Driver");
        com.mysql.jdbc.Connection con=(com.mysql.jdbc.Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        com.mysql.jdbc.PreparedStatement st=(com.mysql.jdbc.PreparedStatement) con.prepareStatement("insert into image values(?,?,?)");
        st.setString(2,emailid);
        st.setBlob(3,inputStream);
            
             
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                st.setBlob(3, inputStream);
            }
 
            // sends the statement to the database server
            int row = st.executeUpdate();
            if (row > 0) {
                
            }
        } catch (SQLException ex) {
            
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(photo.class.getName()).log(Level.SEVERE, null, ex);
        } 
    }
}