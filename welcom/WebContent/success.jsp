<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id_proof=request.getParameter("Select");
String id_number=request.getParameter("pid");
String Name=request.getParameter("uname");
String gender=request.getParameter("gender");
String year=request.getParameter("dob");
String mobile_number=(String)session.getAttribute("mobile_num");


if(mobile_number==null)
{
	response.sendRedirect("error1.jsp");
}
else{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");
Statement st=conn.createStatement();
 ResultSet rs;
String query="select id_number from idproof where id_number='"+id_number+"'";
rs=st.executeQuery(query);
if(rs.next())
{
	response.sendRedirect("error.jsp");
}
else{ 
int j = st.executeUpdate("INSERT INTO db3.idproof(id_proof,id_number,name,gender,year,mobile_number) VALUES('"+id_proof+"','"+id_number+"','"+Name+"','"+gender+"','"+year+"','"+mobile_number+"')");
if(j>0){
	session.setAttribute("name",Name);
	response.sendRedirect("Addmember.jsp?mobile="+mobile_number);
}
}
}

%>


</body>
</html>