function validateform(){  
var firstname=document.myform.firstname.value;
var lastname=document.myform.lastname.value;
var email=document.myform.email.value;
var phone=document.myform.phone.value;
var profession=document.myform.profession.value;    
var password=document.myform.password.value;  
var password2=document.myform.password2.value;  
var atposition=email.indexOf("@");  
var dotposition=email.lastIndexOf(".");  


if ( lastname==null || lastname==""){  
  alert("lName can't be blank");   
  return false; 
}
else if (lastname==null || lastname==""){  
  alert("lName can't be blank");  
  return false;   
}  

else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
  alert("Please enter a valid e-mail address");  
  return false;  
  }  
  
else if (isNaN(phone)){  
  alert("Enter numeric values only"); 
  return false;
} 
else if (profession==null || profession==""){  
  alert("It can't be blank");  
  return false;   
} 
else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }  
  
else if(password==password2){  
return true;  
}  
else{  
alert("password must be same!");  
return false;  
}  
} 