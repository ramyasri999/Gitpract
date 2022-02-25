<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://yui.yahooapis.com/3.18.1/build/cssbutton/cssbutton.css">
<style>

.button1
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
<div id="mySidenav" class="sidenav">
<body class="yui3-skin-sam">
<center>
<h2>Hi! <%=session.getAttribute("userName") %> Welcome to Daily Expenses Application</h2>
<div class ="yui3-skin-sam">
<html>
<table>
<tr>
<form action = "expenseform.jsp" method="redirect">
<input type="submit" style="margin:5px;" class ="yui3-button" value="Expense Form">
</form>
<form action = "retrieve.jsp" method="redirect">
<input type="submit"  style="margin:5px;" class ="yui3-button" value="Reports">
</form>
<form action = "logout.jsp" method="redirect">
<input type="submit"  style="margin:5px;" class ="yui3-button" value="Logout">
</form>
</tr>
</table>
</div>
</html>


<%--
<a href ='expenseform.jsp' class ="yui3-button">Expenses Form</a>
<a href ='retrieve.jsp' class ="yui3-button">Reports</a>
<a href ='logout.jsp' class ="yui3-button">Logout</a>
 --%>
 
</div>
</center>
</body>
</html>