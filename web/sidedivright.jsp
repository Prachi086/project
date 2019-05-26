<%-- 
    Document   : sidedivright
    Created on : 10 May, 2017, 7:42:29 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .input{
	margin:5px;
        width:100%;
        height:40px;
	padding-right:20px;
	padding-left:20px;
        font-size: 16px;
        font-family: 'Bad Script', cursive;
	padding:16px;
        border-style:double;
        border-color:#00B0FF;
}
.bott
{
width:150px;
height:60px;
background-color:#00B0FF;
font-weight:bold;
color:white;
font-size:30px;
padding:8px;
font-family: 'Bad Script', cursive;
border-style:none;
}
</style>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
function showData(value){ 
$.ajax({
    url : "ajax_search.jsp?name="+value,
    type : "POST",
    async : false,
    success : function(data) {
        $('#name').autocomplete({
      source: data
    });
//Do something with the data here
    }
});
}
</script>
    
<div class="side" style="height:400px;">
                            
    <div class="div name" style="padding:30px;color:black;margin-top:30px">
            <form action="search.jsp" method="post">
                <div><input type="text" name="cb" autocomplete="off" id="name" onkeyup="showData(this.value);" placeholder="Search people by skill" class="input" required autofocus></div><br>
            <div><input type="text" name="city" autocomplete="off" placeholder="Enter your location" class="input" required autofocus></div><br><br>
            <div><input type="submit" value="Search" class="bott"></div>
            </form>           
    </div>
                    
</div>

