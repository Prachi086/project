<%-- 
    Document   : signupskills
    Created on : 20 May, 2017, 10:31:39 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp"%>
<% 
String semail=(String)request.getAttribute("skillemail");
String sstate=(String)request.getAttribute("skillstate");
String scity=(String)request.getAttribute("skillcity");
request.setAttribute("semail",semail);
request.setAttribute("sstate",sstate);
request.setAttribute("scity",scity);
%>
<link href="css/signupskills.css" type="text/css" rel="stylesheet" media="all">

<style>
    .absolute-text{
        top:10%;
        font-size:40px;
    }
    .skill{
        margin-top:26%;
    }
</style>
<!--gallery-->
        <div id="gallery" class="gallery " style="padding:20px;">
	    <div class="gallery-heading" style="margin-top:60px;">
                <h1 align="center" >Choose your respective skill !!!</h1>
				<br><br>
		</div>
            <form action="insertskills.jsp" method="post" >
		<div class="container-fluid ">
		  <div class="row">
			<div class="col-md-4">
			  <div class="photo">
                            <a target="_blank" href="photography.jpg">
				
                            <img src="images/dance.jpeg" style="padding:0px;" >
                            <div class="checkboxes">
                                <div class="absolute-text">Dance</div>
                                <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb1"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb2"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb[3]"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb[4]"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
                            </a>
                          </div>
			  </div>
			<div class="col-md-4">
			  <div class="photo">
				<img src="images/painting.jpeg" alt="" style="padding:0px;" >
                                <div class="checkboxes">
				<div class="absolute-text">Paint</div>
                                <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="acrylic" >&nbsp;&nbsp;Acrylic painting</div>
                                <div class="sub"><input class="input" type="checkbox"  value="oil" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Oil painting</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="sand">&nbsp;&nbsp;Sand painting</div>
                                <div class="sub"><input class="input" type="checkbox" value="digital" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Digital painting</div>
                                </div>
				
			  </div>
			</div>
                        </div>
			<div class="col-md-4">
			  <div class="photo">
                            <a target="_blank" href="photography.jpg">
                            <img src="images/acting.jpeg" alt="" style="padding:0px;" >
                            <div class="checkboxes">
                                <div class="absolute-text">Acting</div>
                                <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
                            </a>
                          </div>
			</div>
		</div>	
		<div class="row ">
			<div class="col-md-4">
			  <div class="photo">
                            <a target="_blank" href="music2.jpg">
                            <img src="images/fashion.jpg" alt=""style="padding:0px;" >
                            <div class="checkboxes">
				<div class="absolute-text">Fashion Design</div>
                                <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				 <!-- <div class="caption">Add a description of the image here</div>-->
			  </div>
			</div>
			<div class="col-md-4">
			  <div class="photo">
				<a target="_blank" href="photography.jpg">
				<img src="images/singing.jpg" alt="" style="padding:0px;" >
                                <div class="checkboxes">
                                    <div class="absolute-text">Singing</div>
                                    <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				  
			  </div>
			</div>
			<div class="col-md-4">
			  <div class="photo">
				<a target="_blank" href="photography.jpg">
				<img src="images/writting.jpg" alt="" style="padding:0px;">
                                <div class="checkboxes">
					<div class="absolute-text">Writing</div>
                                        <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				  
			  </div>
			</div>
			</div>
			<div class="row ">
			<div class="col-md-4">
			  <div class="photo">
				  <a target="_blank" href="music2.jpg">
					<img src="images/graphics.jpg" alt="" style="padding:0px;">
                                        <div class="checkboxes">
					<div class="absolute-text">Graphics</div>
                                        <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				 <!-- <div class="caption">Add a description of the image here</div>-->
			  </div>
			</div>
			<div class="col-md-4">
			  <div class="photo">
				  <a target="_blank" href="photography.jpg">
					<img src="images/photography.jpg" alt="" style="padding:0px;" >
                                        <div class="checkboxes">
					<div class="absolute-text">Photography</div>
                                        <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				  
			  </div>
			</div>
			<div class="col-md-4">
			  <div class="photo">
				  <a target="_blank" href="photography.jpg">
					<img src="images/startup.jpg" alt="" style="padding:0px;">
                                        <div class="checkboxes">
					<div class="absolute-text">Startup</div>
                                        <div class="skill">
                                <div class="sub"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div>
                                <div class="sub"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div>
                                <div class="sub"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div>
                                <div class="sub"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div>
                                </div>
                            </div>
				  </a>
				  
			  </div>
			</div>
			</div>
                    <div class="row">
                        <div class="col-md-5"></div>
                                    <div class="col-md-4"><div class="submit" style=""><input class="submit" type="submit" value="Submit" ></div></div>
                                    <div class="col-md-3"></div>
                    </div>
		</div>
            </form>
		</div>
	   <!--gallery-->
           <%@include file="footer.jsp"%>