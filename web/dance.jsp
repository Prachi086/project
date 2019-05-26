<%-- 
    Document   : dance
    Created on : 19 May, 2017, 3:19:08 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
        <link href="css/skills.css" type="text/css" rel="stylesheet" media="all">
        <link href="css/rachi.css" type="text/css" rel="stylesheet" media="all">
	<!--css-->
	<!--bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollTo-1.4.3.1-min.js"></script>
        <script language="Javascript" src="jquery.js"></script>
        <script src="//www.hscripts.com/js/jquery.js?v=3"></script>
        <script type="text/JavaScript" src="js/state.js"></script>
        <script type="text/JavaScript" src="js/district.js"></script>
        <script type="text/javascript" src="js/validate.js"></script> 
        <!--bootstrap-->
<script>
  
        $(document).ready(function(){
	$('a[href^="#"]').on('click',function (e) {
	    e.preventDefault();

	    var target = this.hash;
	    var $target = $(target);

	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 900, 'swing', function () {
	        window.location.hash = target;
	    });
	});
});
</script>
	<style>
		
		 article{
			height:800px;
			
			background-image:url("images/dance.jpeg");
			background-size:cover;
			background-repeat:no-repeat;
                        background-attachment: fixed;
			}
			
			.absolute-text1{
				position: absolute;
				width: 97%;
				top:120px;
				text-align: center;
				font-size: 40px;
				color:white;
				font-family: 'Bad Script', cursive;
                                background: rgba(0,0,0,.25);
			}
                        .absolute-text2{
				position: absolute;
				width: 97%;
				top:470px;
				text-align: center;
				font-size: 40px;
				color:white;
				font-family: 'Bad Script', cursive;
                                background: rgba(0,0,0,.25);
			}
			
				
	</style>
        <script>

        $("input:checkbox").on('click', function() {
  // in the handler, 'this' refers to the box clicked on
  var $box = $(this);
  if ($box.is(":checked")) {
    // the name of the box is retrieved using the .attr() method
    // as it is assumed and expected to be immutable
    var group = "input:checkbox[name='" + $box.attr("name") + "']";
    // the checked state of the group/box on the other hand will change
    // and the current value is retrieved using .prop() method
    $(group).prop("checked", false);
    $box.prop("checked", true);
  } else {
    $box.prop("checked", false);
  }
});

    </script>
	<style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
	      height:300px;
		  width: 100%;
		  margin: auto;
	  }
	  </style>
	  <style>
		.mono{
		font-size:20px;
		font-family: 'Josefin Slab', serif;
	        color:#00B0FF;
		padding-top:30px;
		
		}
	  </style>
          <script>
function get()
{
 for (var loop=1; loop<=4; loop++)
                    {
                        if(document.getElementById('f'+loop).checked==true)
                        {
                            for (var loop1=1; loop1<=4; loop1++)
                            {
                                if(document.getElementById('f'+loop).id==document.getElementById('f'+loop1).id)
                                {
                                        document.getElementById('f'+loop1).checked = true;
                                }
                                else
                                {
                                        document.getElementById('f'+loop1).checked = false;
                                }
                            }
                        }
                    }
 
}
</script>
</head> 

<body>
	<!--header-->
	<header>
		<div class="container">
			<div class='row'>
			<div class="col-md-3 " >
                            <a href="index.jsp"><p align="center" class="mono">getKonect</p></a>
				<!--<img  class="mono img-responsive" src="images/mono.png" width=160px height=80px>-->
			</div>
			<div id="nav" class="col-md-6 op font">
				<nav>
					<ul class="nav navbar" style="font-size:18px">								
                                            <li><a href="index.jsp#gallery">Search</a></li>
					    <li><a href="feeds.jsp"> Feeds</a></li>
					    <li><a href="">Contact</a></li>
					</ul>
				</nav>
			</div>
	<%
        if ((session.getAttribute("emailid") == null) || (session.getAttribute("emailid") == "")) {
        %>
			<div class="but col-md-3 font float-right" style="font-size:18px">
				<a href="login.jsp">
				<div class=" col-md-6 button float-right">
						<p align="center">Log In</p>
				</div>	
				</a>
				<a href="rachi.jsp">
				<div class="col-md-6 button float-right">
					<p align="center">Sign Up</p>
				</div>
				</a>
			</div>
        <%} else {
        %>
                         <div class="but col-md-3 font  ">
                            <div class="icons">
                                <a href="profile.jsp"><div class="tool"><div class="glyphicon glyphicon-user icon"><span class="tooltiptext">profile</span></div></div></a>
                                <div class="tool dropdown "><span class="glyphicon glyphicon-globe icon"><span class="tooltiptext">notification</span></span><div class="dropdown-content">
                                    <p><%String nm=(String)session.getAttribute("first");
                                            out.print("Hello "+nm+"!!" );%><br>
                                             4 search requests found</p>
                                  </div></div>
                                 
                                <a href="home.jsp"><div class="tool"><div class="glyphicon glyphicon-home icon"><span class="tooltiptext">home</div></div></a>
                                <a href="logout.jsp"><div class="tool"><div class="glyphicon glyphicon-log-out icon  "><span class="tooltiptext">logout</span></div></div></a>
                                    
                            </div>   
			</div>
         <% } %>
			</div>	
		</div>
	</header>
        			
	<!--header-->
	<!--banner-->
	<div>
	<article>
		<div class="container-fluid" id="bgimage">
                    <div>
                        <form action="search.jsp" method="post">
                        <div class="absolute-text1">Choose the sub-category</div>
                        <div class="sub">
                           
                                <div class="row subrow">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3"><div class="subinner"><input class="input" type="checkbox" name="cb"  id="f1" onClick="get()" value="kathak" >&nbsp;&nbsp;Kathak</div></div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-3"><div class="subinner"><input class="input" type="checkbox"  value="bharatnatyam" name="cb"  id="f2" onClick="get()" >&nbsp;&nbsp;Bharatnatyam</div></div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div class="row subrow">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3"><div class="subinner"><input class="input"  type="checkbox" name="cb"  id="f3" onClick="get()" value="salsa">&nbsp;&nbsp;Salsa</div></div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-3"><div class="subinner"><input class="input" type="checkbox" value="contamprory" name="cb"  id="f4" onClick="get()">&nbsp;&nbsp;Contamprory</div></div>
                                    <div class="col-md-1"></div>
                                </div>                       
                        </div>
                        <div class="absolute-text2">Choose your location</div>
                        <div class="sub resp_code frms" style="top:510px;">
                            
                                <div class="row subrow" id="selection">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-3"><div class="subinner" style="font-size:20px;"><select id="listBox" name="state" onchange='selct_district(this.value)'></select></div></div>
                                    <div class="col-md-2"></div>
                                    <div class="col-md-3"><div class="subinner" style="font-size:20px;"><select id='secondlist' name="city" ><option value="city">SELECT CITY</option></select></div></div>
                                    <div class="col-md-1"></div>
                                </div>
                                <div id="dumdiv" align="center" style=" font-size: 10px;color: #dadada;">
                                    <a id="dum" style="padding-right:0px; text-decoration:none;color: green;text-align:center;" href="http://www.hscripts.com"></a>
                                </div>
                        </div>
                        <div class="absolute-text2" style="top:670px;">
                            <div class="row ">
                                    <div class="col-md-7"></div>
                                    <div class="col-md-3"><div class="" style="color:black;padding:10px;width:200px;margin:10px;"><input style="width:150px;" type="submit" value="Search" ></div></div>
                                    <div class="col-md-2"></div>
                            </div>
                                
                        </div>
                        </form>
                        </div>
                </div>
        </article>
	</div>
	<!--banner-->
	
	
	<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
	</body>
  </html>



