<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.SQLException" %>
<% %>					
<!DOCTYPE html>
<html>
<head>
<style>
.yui3-skin-sam
{
	background-image: linear-gradient(transparent 40%,rgba(0,0,0,0.21));
    color: #000;
    font-weight: normal;
    text-align: left;
    text-shadow: 0 1px 1px #fff;
    vertical-align: bottom;
    white-space: nowrap;
    font-family: arial,sans-serif;
	
}
table
{
  	border-spacing: 0px;
  	border:1px solid #cbcbcb;
	background-color: #fff;
 	border-left: 1px solid #dedede;
	column-gap: 3%;
}
tr:nth-child(even) 
{
            background-color: #edf5ff; 
}
td
{	
	padding:5px;
	border: 0px solid #cbcbcb;
	border:0px;
	color:#ffffff;
	font-family: arial,sans-serif;	
}
table tr td 
{
  border-right: 1px solid #dedede;
  color: black; 
} 
</style>
<title>Retrieving Data</title>
</head>
<body>
<SCRIPT type="text/javascript" src="http://yui.yahooapis.com/3.5.1/build/yui/yui-min.js"></SCRIPT>
	<h1>Your Expenses Details </h1>
		<table>
		<tbody class="yui3-skin-sam">
		<tr>
		<td>EXP_ID</td>
		<td>USER_ID</td>
		<td>EXP_RECORD_DATE</td>
		<td>EXP_DATE</td>
		<td>EXP_CATEGORY_ID</td>
		<td>EXP_DESC</td>
		<td>COST</td>
		</tr>
		</tbody>
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
		</table>
		<br><br>
		<a href ="welcome.jsp">Go back</a>
</body>
</html>	