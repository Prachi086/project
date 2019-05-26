<%-- 
    Document   : search
    Created on : 19 May, 2017, 11:18:11 AM
    Author     : lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("emailid")==null)
      response.sendRedirect("login.jsp");

  %> 
	<title>getKonnect.com</title>
	<!--mobile apps-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--mobile apps-->
	<!--web-fonts-->
	<link href='//fonts.googleapis.com/css?family=Overlock:400,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
	<link href="https://fonts.googleapis.com/css?family=Josefin+Slab" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Bad+Script|Courgette|Slabo+27px" rel="stylesheet">
	<!--//web-fonts-->
	<!--css-->
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/rachi.css" type="text/css" rel="stylesheet" media="all">
	<!--css-->
<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src=js/scroll.js"></script>
       <script type="text/javascript" src="jquery.js"> </script>
        <script src="//www.hscripts.com/js/jquery.js?v=3"></script>
        <script type="text/JavaScript" src="js/state.js"></script>
        <script type="text/JavaScript" src="js/district.js"></script>
        <script type="text/javascript" src="js/validate.js"></script> 
    <link rel="stylesheet" type="text/css" href="style1.css">
        
        <!--bootstrap-->
        
        <style>
            .box{
                background-color:white;
                font-size:20px;
                font-family: 'Josefin Slab', serif;
                margin-top:10px;
                padding: 30px;
                border-color: black;
              /*box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
            }
            .heading{
                font-size:40px;
                font-family: 'Bad Script', cursive;
                color:#00B0FF;
                text-align: center;
                padding:20px;
                
            }
            .subheading{
                font-size:30px;
                font-family: 'Josefin Slab', serif;
                color:black;
                text-align: center;
                padding:20px;
                margin: 40px;
                
            }
            .arbutton{
                background-color:#00B0FF; 
                font-family: 'Bad Script', cursive;
                font-size:30px;
                padding: 30px;
                width:200px;
                height:100px;
                color:white;
                float:right;
                margin: 30px;
                margin-right: 120px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            }
            .bg{
                background-color: rgba(128, 128, 128, 0.09);
            }
            .cat{
                background-color: #00B0FF;
            }
        </style>
    </head>
        <body>
           <div class="bg">
<%

        response.setContentType("text/html");  
        
        //String state=request.getParameter("state");
        String city=request.getParameter("city");
        String subcat= request.getParameter("cb");
        String tableemail=null;
        String hasresult=null;
         try{  
         
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehaviour=convertToNull","root","root");
        PreparedStatement st=(PreparedStatement) con.prepareStatement("select emailid from skills where subcat=? and city=?");
        st.setString(1,subcat);
        st.setString(2,city);
        ResultSet rs=st.executeQuery(); 
         
        %>
            <div class="container-fluid ">
                <div class="heading" style="background-color:white;margin: 20px;"><% out.print("Search Results"); %></div>
      <%
         while(rs.next()){
         tableemail=rs.getString(1);
         request.setAttribute("tableemail",tableemail);
         request.setAttribute("tablecity",city);
         hasresult="hasresult";
         %>
         <%@include file="table.jsp" %>
         <%
             }
             if(hasresult==null){%>
<div class="subheading"><% out.print("Sorry result not found"); %></div>
<%
}else{}
      

%>

 <%    
     }
        catch(Exception e)
        {
        out.println(e);
        }
%>
        <div>
                <a  data-toggle="modal" data-target="#myModal1">
                    <div class="addrequest"><div class="arbutton">Add Request</div></div></a>
 
            </div>
            </div>

    <%
                if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
                %>
    <!-- myModal -->
    <div class="modal fade" id="myModal1" role="dialog">
      <div class="modal-dialog">
      
        <!-- Modal content-->
        <div class="modal-content">
          <div class="modal-body">
              <p style="text-align: center;padding: 30px;font-size: 20px;font-family: 'Josefin Slab', serif;">
              You are not logged in<br/>
              <a href="login.jsp">Please Login</a>
              </p>
              <button style="" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>
        
      <!-- Modal content-->
      </div>
    </div>
      <%
                        }else{
%>
<div class="modal fade" id="myModal1" role="dialog">
      <div class="modal-dialog">
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="media-heading">
              <span class="glyphicon glyphicon-pencil"></span> Add Request </h4>
										
        </div>
        <form action="insertrequest.jsp" method="post" >
        <div class="modal-body" id="texthere" align="center">
            <div class='resp_code frms'>

              <div id="selection">
                  <select name="skills" required>
                        <option value="">SELECT SKILL</option>
                        <option value="dance" disabled class="cat">Dance</option>
                        <option value="kathak">kathak</option>
                        <option value="salsa">salsa</option>
                        <option value="bharatnatyam">bharatnatyam</option>
                        <option value="contamprory">contamprory</option>
                        
                        <option value="paint" disabled class="cat">Paint</option>
                         <option value="acrylic">acrylic</option>
                        <option value="oil">oil</option>
                        <option value="sand">sand</option>
                        <option value="digital">digital</option>
                        
                        <option value="acting">Acting</option>
                        <option value="fashiondesign">Fashion Design</option>
                  </select>
                  <select id="listBox" name="state" onchange='selct_district(this.value)' required></select>
                <select id='secondlist' name="city" required><option value="skills" selected>SELECT CITY</option></select>
              </div>
              <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
                  <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
              </div>
            </div>
            
      	</div>
        <div class="modal-footer">
            <input type="submit" value="Add" class="btn btn-default">
            <input type="submit" value="Close" class="btn btn-default" data-dismiss="modal">
            
        </div>
        </form>
      </div>
       <!-- Modal content-->
      </div>
    </div>
      <%
}
%>
           </div>
</body>
    </html>