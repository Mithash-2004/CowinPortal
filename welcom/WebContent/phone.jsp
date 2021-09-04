<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String mobile_num=request.getParameter("mobile");
session.setAttribute("mobile_num",mobile_num);
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement st=conn.createStatement();
ResultSet rs;
String querymob = "select count(mobile_number) from idproof where mobile_number='"+mobile_num+"'";
rs=st.executeQuery(querymob);
String stQuery="";
while(rs.next()){
stQuery=rs.getString(1);
}

int var=Integer.parseInt(stQuery);


	if(var==0)
	{
		response.sendRedirect("memberadd.jsp");
	}
	else{
		
		response.sendRedirect("Addmember.jsp");
	}


%>


</body>
</html>