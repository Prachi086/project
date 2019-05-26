/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lenovo
 */
import javax.servlet.ServletContext;  
import javax.servlet.http.HttpSessionEvent;  
import javax.servlet.http.HttpSessionListener; 
public class CountUsers implements HttpSessionListener{  
    ServletContext ctx=null;  
    static int total=0,current=0;  
      
    public void sessionCreated(HttpSessionEvent e) {  
    total++;  
    current++;  
      
    ctx=e.getSession().getServletContext();  
    ctx.setAttribute("totalusers", total);  
    ctx.setAttribute("currentusers", current);  
      
    }  
  
    public void sessionDestroyed(HttpSessionEvent e) {  
        current--;  
        ctx.setAttribute("currentusers",current);  
    }  
  
}  

