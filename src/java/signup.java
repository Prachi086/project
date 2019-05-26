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

public class signup extends HttpServlet { 
  @Override 
public void doGet(HttpServletRequest request,HttpServletResponse response) 
throws IOException,ServletException{
   
    doPost(request,response);
}
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  

        int id=0;
        String firstname=request.getParameter("firstname");  
        String lastname=request.getParameter("lastname");  
        String email=request.getParameter("email");  
        String phone=request.getParameter("phone");  
        String profession=request.getParameter("profession");  
        String password=request.getParameter("password");  
        String statename="mp";
        String cityname="indore";
        String things=request.getParameter("things");  
        String description=request.getParameter("description");  
        
        
        
        
        
        
        
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
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
               RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
               rd.forward(request,response);
}catch (Exception e2) {
   
}  
          out.close();  
}  
  
}  