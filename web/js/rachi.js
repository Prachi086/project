/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
                         function Demo1()                    
		{
	            var x1=document.getElementById('d1').value;
                     if(x1==null || x1=="")
                    {
                        document.getElementById('d31').innerHTML="Please enter your first name";
                    }
                    else
                    {
                         document.getElementById('d31').innerHTML="";
                    }
                }
                function Demo2()
                {
                    var x2=document.getElementById('d2').value;
                   if(x2==null || x2=="")
                    {
                        document.getElementById('d32').innerHTML="Please enter your last name";
                    }
                    else
                    {
                         document.getElementById('d32').innerHTML="";
                    }
                }
                function Demo3()
                {
                    var x3=document.getElementById('d3').value;
                    var re3=/^\w{3,30}\@\w{5}\.w{3}$/;
                    if(re3.test(x3))
                    {
                         document.getElementById('d33').innerHTML="";
                    }
                    else
                    {
                         document.getElementById('d33').innerHTML="Please enter a valid email-id";
                    }
                }
                function Demo4()
                {
                     var x4=document.getElementById('d4').value;
                     var re4=/^[7-9]\d{9}$/;
                     if(re4.test(x4))
                     {
                        document.getElementById('d34').innerHTML=""; 
                     }
                     else
                     {
                         document.getElementById('d34').innerHTML="Please enter a valid number";
                     }
                }
                function Demo5()                    
		{
	            var x1=document.getElementById('d5').value;
                     if(x1==null || x1=="")
                    {
                        document.getElementById('d35').innerHTML="Please enter your organisation name";
                    }
                    else
                    {
                         document.getElementById('d35').innerHTML="";
                    }
                }
                function Demo6()
                {
                    var x6=document.getElementById('d6').value;
                   var re6=/^[A-Za-z]\w{7,14}$/; 
                   if(re6.test(x6))
                   {
                       document.getElementById('d36').innerHTML="";
                   }
                   else
                   {
                       document.getElementById('d36').innerHTML="Password must be of 6 or more characters";
                   }
                }
                function Demo7()
                {
                    var x6=document.getElementById('d6').value;
                    var x7=document.getElementById('d7').value;
                    if(x6==x7)
                    {
                        document.getElementById('d37').innerHTML="";
                    }
                    else
                    {
                        document.getElementById('d37').innerHTML="Password must be same";
                    }
                }
            
