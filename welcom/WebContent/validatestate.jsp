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

String state=request.getParameter("stateform");
String district=request.getParameter("districtform");
String hos=request.getParameter("hosform");
String dat=request.getParameter("dateform");
String slot=request.getParameter("timeform");
String id_num=(String)session.getAttribute("id_number");
String mobile=(String)session.getAttribute("mobile");
//String increment=(String)session.getAttribute("increment");

//out.println(increment);
/* String val=request.getParameter("incre"); */
//final int k=Integer.parseInt(increment);
//out.println(k);
if(mobile==null)
{
	response.sendRedirect("error1.jsp");
}
else{
Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/db3","root","meghana@123$");

Statement st=conn.createStatement();
ResultSet rs;

String query="select * from schedule where id_number='"+id_num+"'";
rs=st.executeQuery(query);

/* if(k<2){ */
if(rs.next())
{
	String count=rs.getString("count");
	int num=Integer.parseInt(count);
	out.println(count);
	Statement str=conn.createStatement();
	int i=str.executeUpdate("delete from schedule where id_number='"+id_num+"'");
	int j=str.executeUpdate("INSERT INTO db3.schedule(state,district,hospital,date, timeslot,id_number,mobile_number,count) values('"+state+"','"+district+"','"+hos+"','"+dat+"','"+slot+"','"+id_num+"','"+mobile+"','"+ ++num +"')");
	
	
}
else{
	int j=st.executeUpdate("INSERT INTO db3.schedule(state,district,hospital,date, timeslot,id_number,mobile_number) values('"+state+"','"+district+"','"+hos+"','"+dat+"','"+slot+"','"+id_num+"','"+mobile+"')");
}

response.sendRedirect("Addmember.jsp");
}
%>

</body>
</html>