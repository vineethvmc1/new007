<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>






</head>
<script>  
function  validateform()  {  
	var name=document.myform.email.value;  
	var password=document.myform.password.value;
	var cpassword=document.myform.password2.value;  

	  
	if (name==null || name=="" ){  
	  alert("Name can't be blank");  
	  return false;  
	}else if(password.length<6){  
	  alert("Password must be at least 6 characters long.");  
	  return false;  
	  }  
	
	if(cpassword==password){
		alert("success")
	}
	else{
		alert("password incorrect")
		return false;
	}
	}  
</script>  

</head>
<body>
<h1 style="text-align:center">admin login</h1>
   <form action="adminhome.jsp" method="post"   >
      <input type="email"  name="email" placeholder="email">
      <input type="password"   name="password" placeholder="Password">
     
      <input type="submit"  onclick="validate()" >
    </form>

</body>
</html>