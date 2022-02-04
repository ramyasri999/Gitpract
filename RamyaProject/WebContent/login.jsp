<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
h2{  
    text-align: center;  
    color: black;  
    padding: 20px;  
    padding-right:5px;
} 
span
{
	margin-left:50px;
}

</style>
<title>Login Here</title>
</head>
<body bgcolor="silver">
<br></br>
<body>

<center>
<h2>LOGIN HERE</h2>

<html:html>
    <div class ="login"style="color:red">
    <html:errors />
    	</div>
	<html:form action="/register" method="get">
		<span style ="margin-left:60px;font-family:'Arial'">UserId:</span>
		<html:text property="userid" size="30"></html:text><br><br>
		<span style ="margin-left:30px;font-family:'Arial'">UserName:</span>
		<html:text  property="userName" size="30"></html:text><br><br>
		<span style ="margin-left:30px;font-family:'Arial'">Password:</span>
		<html:text property="password" size="30"></html:text><br><br>
		<br>
	<span><html:submit>Submit</html:submit>
	 <html:reset>Reset</html:reset>
		<br><br>
	</html:form>
	</div>
</html:html>
</center>
</body>

</html>


<%--<html>    
<head>    
    <title>Login Form</title>    
  <style>
  body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#6abadeba;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #E8BEAC;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: black;  
    padding: 20px;  
}  
label{  
    color: #964B00;  
    font-size: 17px;  
}  
#Uid{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 150px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
}  
  
  </style>   
</head>    
<body>    
    <h2>Login Page</h2><br>    
    <div class="login">    
    <form id="login" method="get" action="/register"> 
       <label><b>UserId</b></label> <br>   
        <input type="text" name="Uid" id="Uid" placeholder="UserId" property="userid">    
        <br><br> 
        <label><b>UserName</b></label>    
        <input type="text" name="Uname" id="Uname" placeholder="Username" property="userName">    
        <br><br>    
        <label><b>Password</b></label>    
        <input type="Password" name="Pass" id="Pass" placeholder="Password" property="password">    
        <br><br>    
        <input type="button" name="log" id="log" value="Submit">       
        
        <input type="reset" name="log" id="log" value="Reset">        
    </form>     
</div>    
</body>    
</html>    
--%>

