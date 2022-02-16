<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Fonts CSS - Recommended but not required -->
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssbutton/cssbutton.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
h2{  
    text-align: center;  
    color: black;  
    padding: 20px;  
    padding-right:5px;
} 
</style>
<title>Login Here</title>
</head>

<body bgcolor="silver"><br></br>

<body>
<center>
<h2>LOGIN HERE</h2>
<html:html>
    <div class ="login"style="color:red">
    <html:errors />
    </div>
	<html:form action="/register" method="post">
		<span style ="margin-left:60px;font-family:'Arial'">UserId:</span>
		<html:text property="userid" size="30"></html:text><br><br>
		<span style ="margin-left:30px;font-family:'Arial'">UserName:</span>
		<html:text  property="userName" size="30"></html:text><br><br>
		<span style ="margin-left:30px;font-family:'Arial'">Password:</span>
		<html:text property="password" size="30"></html:text><br><br>
       	<html>
       		<span class="form">
       		<form action="/welcome.jsp">
       		<div class ="yui3-skin-sam" style ="margin-left:70px">
       		<input type="submit" class ="yui3-button" value="Submit">
       		<button type="reset" class ="yui3-button" value="Reset">Reset</button>
       		</div> 
       		</form>
       		</span>
       	</html>
	</html:form>
</html:html>
</center>
</body>
</html>

	<%--<html:submit>Submit</html:submit>
	  <html:reset>Cancel</html:reset>
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




