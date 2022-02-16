<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://yui.yahooapis.com/3.18.1/build/cssbutton/cssbutton.css">
<style>
.yui3-button
{
	<%-- background-color: #E8BEAC; --%>
	
}

.button 
{
  background-color: #E8BEAC;
  border: none;
  color: #174153;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 24px 2px;
  cursor: pointer;
  border-radius: 14px;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="yui3-skin-sam">
<center>
<h2>Hi! <%=session.getAttribute("userName") %> Welcome to Daily Expenses Application</h2>
<div class ="yui3-skin-sam">
<a href ='expenseform.jsp' class ="yui3-button">Expenses Form</a>
<a href ='#' class ="yui3-button">Reports</a>
<a href ='#' class ="yui3-button">Logout</a>
</div>
</center>
</body>
</html>