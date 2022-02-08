<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
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
<body>
<center>
<h2>Hi! <%=session.getAttribute("userName") %> Welcome to Daily Expenses Application</h2>
<a href='expenseform.jsp' class="button">Expenses Form</a>
<a href ='#' class ="button">Reports</a>
<a href ='login.jsp' class ="button">Logout</a>
</center>
</body>
</html>