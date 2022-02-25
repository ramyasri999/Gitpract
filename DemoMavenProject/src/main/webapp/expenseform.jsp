<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-html" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="yui/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssbutton/cssbutton.css" />
<link rel="stylesheet" type="text/css" href="yui/build/calendar/assets/skins/sam/calendar.css">
<style type="text/css">
h1 {
  text-align: center;
   color: blue; 
   padding: 20px;  
   padding-right:5px;
}
h3
{
margin-left:320px;
}
</style> 
<!--YUI Calendar  -->
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/combo?2.9.0/build/calendar/assets/skins/sam/calendar.css">
<script type="text/javascript" src="http://yui.yahooapis.com/combo?2.9.0/build/yahoo-dom-event/yahoo-dom-event.js&2.9.0/build/calendar/calendar-min.js"></script>
<script type="text/javascript">
function init_calendar()
{
	var cal = new YAHOO.widget.Calendar("cal", { title:"Choose a date:", close:true } );
	cal.render();
	cal.hide();
	YAHOO.util.Event.addListener("datefield", "focus", cal.show, cal, true);
	YAHOO.util.Event.addListener("datefield", "blur", cal.show, cal, false);
	cal.selectEvent.subscribe(addDateText, cal, true);
}
function addDateText(type, args, obj)
{
  var datedata = args[0][0];
  var year = datedata[0];
  var month = datedata[1];
  var day = datedata[2];
  document.forms[0].datefield.value = day+'/'+month+'/'+year;
  obj.hide();
}
YAHOO.util.Event.onDOMReady(init_calendar);
function init_calendar1(){
	var cal1 = new YAHOO.widget.Calendar("cal1", { title:"Choose a date:", close:true } );
	cal1.render();
	cal1.hide();
	YAHOO.util.Event.addListener("datefield1", "focus", cal1.show, cal1, true);
	YAHOO.util.Event.addListener("datefield1", "blur", cal1.show, cal1, false);
	cal1.selectEvent.subscribe(addDateText1, cal1, true);
	}
	function addDateText1(type, args, obj){
	  var datedata = args[0][0];
	  var year = datedata[0];
	  var month = datedata[1];
	  var day = datedata[2];
	  document.forms[1].datefield1.value = day+'/'+month+'/'+year;
	  obj.hide();
	}
	YAHOO.util.Event.onDOMReady(init_calendar1);
</script>
<!--YUI Calendar  -->
<title>Daily Expenses Form</title>
</head>

<body bgcolor="silver" class="yui-skin-sam">
<center>
<br></br>	
	<h1><u> DAILY EXPENSES FORM </u></h1>
	<html:html>
    <div class ="expense" style="color:red">
    <html:errors />
    </div>
	<html:form action ="/expense" method="post">
		Enter your EXP_ID:
		<html:text property="EXP_ID" size="30" /><br><br>
		Enter your USER_ID:
		<html:text property="USER_ID" size="30" /><br><br>			
		<form>
			Enter your EXP_RECORD_DATE: <input type="text" id="datefield" />
			<br />
			<div id="cal"></div>
		</form>		
		<br>	
		<form>
			Enter your EXP_DATE: <input type="text" id="datefield1" />
			<br />
			<div id="cal1"></div>
		</form>
		<br>
		Enter your EXP_CATEGORY_ID:
		<html:text property="EXP_CATEGORY_ID" size="30" /><br><br>
		Enter your EXP_DESC:
		<html:text property="EXP_DESC" size="30" /><br><br>
		Enter your COST:
		<html:text property="COST" size="30" /><br><br>
		<html>
       		<span class="form">
       		<form action="success.jsp">
       		<div class ="yui3-skin-sam" style ="margin-left:70px">
       		<input type="submit" class ="yui3-button" value="Submit"/>
       		<button type="button" class="yui3-button" onclick="window.history.back();">Cancel</button>
       		</div> 
       		</form>
       		</span>
       	</html>
	</html:form>
</html:html>
</center>


</body>
</html>

 