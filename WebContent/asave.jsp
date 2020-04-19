
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%try{
	java.util.Date date;
	

String username=request.getParameter("username");
String userpass=request.getParameter("userpass");

String dateofbirth=request.getParameter("dob");
//String dateofjoining=request.getParameter("doj");
String salary=request.getParameter("salary");
String branch=request.getParameter("branch");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("insert into payregister values(?,?,?,?,?,?,?)");

ps.setInt(1,0);
ps.setString(2,username);
ps.setString(3,userpass);
ps.setString(4,branch);
ps.setString(6,dateofbirth);
date = new java.util.Date();
String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
java.sql.Timestamp ts_date = java.sql.Timestamp.valueOf(nowTime);
ps.setTimestamp(5, ts_date);
ps.setString(7,salary);

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
