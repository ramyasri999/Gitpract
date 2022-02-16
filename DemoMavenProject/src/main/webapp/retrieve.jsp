<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.SQLException" %>
<% %>					
<!DOCTYPE html>
<html>
<head>
<title>Retriving Data</title>
</head>
<body class="example yui3-skin-sam">
<SCRIPT type="text/javascript" src="http://yui.yahooapis.com/3.5.1/build/yui/yui-min.js"></SCRIPT>
<SCRIPT type="text/javascript">
        // Create a new YUI instance and populate it with the required modules.
YUI().use('datatable', function (Y) 
{
			//var conObj = new ActiveXObject('ADODB.Connection');
    		//var conString = "Provider=OraOLEDB.Oracle; Data Source=(DESCRIPTION=(CID=GTU_APP)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=202.125.144.34)(PORT=1521)))(CONNECT_DATA=(SID=orcl)(SERVER=DEDICATED)));User Id=system; Password=oracle;"
   			//conObj.Open(conString);
    		//var rs =  new ActiveXObject("ADODB.Recordset");
    		//sql = "SELECT * from expenses"
   			// rs.open(sql,conString);
    		//var rsnum=rs.fields.count;
    		//alert(rsnum);
    		//rs.close;
    		//conObj.close;
    		// var data = [{sql}];
           
	       // var oracle = require('oracle');
			//var connectData = {hostname: "localhost",port: 1521,database: "orcl", // System ID (SID)
			//user: "system",password: "oracle"};
            // Columns must match data object property names
           
            var data = [{ EXP_ID: "2",USER_ID: "2",EXP_RECORD_DATE: "2022-02-08 00:00:00",EXP_DATE: "2022-02-08 00:00:00 ",EXP_CATEGORY_ID:"8",EXP_DESC:"clothing",COST:"1500" },
               // { id: "sp-9980", name: "sprocket", price: "$3.75", cost: "$3.25" },
               // { id: "wi-0650", name: "widget",   price: "$4.25", cost: "$3.75" }
           ];

var table = new Y.DataTable(
{
   columns: ["EXP_ID", "USER_ID", "EXP_RECORD_DATE","EXP_DATE","EXP_CATEGORY_ID","EXP_DESC","COST"],
   data: data,
   //myDataSource.responseSchema = {fields: ["EXP_ID", "USER_ID", "EXP_RECORD_DATE","EXP_DATE","EXP_CATEGORY_ID","EXP_DESC","COST"]};
   // Optionally configure your table with a caption
    caption: "Your Expenses Details",
});
table.render("#example");
});
</SCRIPT>
<%--
<h1>Your Expenses Details </h1>
		<table border="1">
		<tr>
		<td>EXP_ID</td>
		<td>USER_ID</td>
		<td>EXP_RECORD_DATE</td>
		<td>EXP_DATE</td>
		<td>EXP_CATEGORY_ID</td>
		<td>EXP_DESC</td>
		<td>COST</td>

		</tr>
		<%
		try
		{
			Connection connection = null;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","oracle");
			Statement statement = connection.createStatement();
			String sql ="SELECT * FROM expenses";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next())
			{
				%>
				<tr>
				<td><%=resultSet.getString("EXP_ID") %></td>
				<td><%=resultSet.getString("USER_ID") %></td>
				<td><%=resultSet.getString("EXP_RECORD_DATE") %></td>
		
				<td><%=resultSet.getString("EXP_DATE") %></td>
		
				<td><%=resultSet.getString("EXP_CATEGORY_ID") %></td>
				<td><%=resultSet.getString("EXP_DESC") %></td>
				<td><%=resultSet.getString("COST") %></td>
		
				</tr>
				<%
			}
			connection.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		%>
		<a href ='login.jsp'>Go Back</a>
		</table> --%>
</body>
</html>	