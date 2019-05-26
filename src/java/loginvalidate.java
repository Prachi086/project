
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.DriverManager;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lenovo
 */
public class loginvalidate {
    public static boolean validate(String username,String password){  
        boolean status=false;
    
        try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select * from tablename1 where firstname=? and lastname=?");
        st.setString(1,username);
        st.setString(2,password);
        ResultSet rs=st.executeQuery();  
        status=rs.next();  
        if(rs.next())
    {
       String first=rs.getString(2);
       String last=rs.getString(3);
      
       
       
       }
  

        }catch(Exception e){
            System.out.println(e);
        }  
        return status;  
        }  
}  

