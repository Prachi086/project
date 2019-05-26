

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Blob;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Base64;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lenovo
 */
public abstract class feeds implements ServletContextListener{
    Blob image = null;
    byte[ ] imgData = null ;
    
    public void contextInitialized(ServletContextEvent event) {  
try{  
    Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from post where about=? ");
        st.setString(1,"mradul");
        ResultSet rs=st.executeQuery();
       
        ServletContext ctx=event.getServletContext();
        while(rs.next()){
            image = rs.getBlob(2);
            imgData = image.getBytes(1,(int)image.length());
            String encode = Base64.getEncoder().encodeToString(imgData);
           
            ctx.setAttribute("email", rs.getString(1)); 
            ctx.setAttribute("image", encode); 
            ctx.setAttribute("about", rs.getString(3)); 
        }
        
}catch(Exception e){e.printStackTrace();}  
}  
  
public void contextDestroyed(ServletContextEvent arg0) {}  
}  

