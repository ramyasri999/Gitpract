<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="yui/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="yui/build/calendar/calendar-min.js"></script>
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssbutton/cssbutton.css" />

<link rel="stylesheet" type="text/css" href="yui/build/calendar/assets/skins/sam/calendar.css">
<style type="text/css">
input 
{ 
	margin:0px 10px 0px 10px;
}
</style>
<title>Login page</title>
</head>
<body bgcolor="silver" class="yui-skin-sam">
<br></br>

<h1> Daily Expenses Form </h1>
<html:html>
    <div class ="expense" style="color:red">
    <html:errors />
    </div>
	<html:form action ="/expense" method="get">
	<div>
		

		Enter your EXP_ID:
		<html:text property="EXP_ID" size="50" /><br><br>
		
		Enter your USER_ID:
		<html:text property="USER_ID" size="50" /><br><br>
		
		Enter your EXP_RECORD_DATE:
		<html:text property="EXP_RECORD_DATE" size="50" /><br><br>
		
		Enter your EXP_DATE:
		<html:text property="EXP_DATE" size="30" /><br><br>
		
		Enter your EXP_CATEGORY_ID:
		<html:text property="EXP_CATEGORY_ID" size="30" /><br><br>
		
		Enter your EXP_DESC:
		<html:text property="EXP_DESC" size="15" /><br><br>
		
		Enter your COST:
		<html:text property="COST" size="15" /><br><br>
		
	
		<html>
       		<span class="form">
       		<form action="/welcome.jsp">
       		<div class ="yui3-skin-sam" >
       		<input type="submit" class ="yui3-button" value="Submit">
       		<button type="reset" class ="yui3-button" value="Reset">Reset</button>
       		</div> 
       		</form>
       		</span>
       	</html>
		<br><br>
	</html:form>
</html:html>
</body>
</html>

 