<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%try{
System.out.print(request.getParameter("name"));
String id;//;=request.getParameter("id");
String name=request.getParameter("name");
String consumer_id=request.getParameter("consumer_id");
String engineer_id=request.getParameter("engineer_id");
String bill_id=request.getParameter("bill_id");
String qq_id=request.getParameter("qq_id");
String total=request.getParameter("total");
String paid=request.getParameter("paid");
String dateofjoining;//=request.getParameter("dateofjoining");
String service=request.getParameter("service");
String description=request.getParameter("description");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("insert into student2 values(?,?,?,?,?,?,?,?,?,?)");

ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,course);
ps.setString(4,mobile);
ps.setString(5,feesub);
ps.setString(7,paid);
ps.setString(6,fee);
ps.setString(8,balance);
ps.setString(9,address);
ps.setString(10,fathername);
ps.setString(11,mothername);
ps.setString(12,dateofbirth);
ps.setString(13,qualification);
ps.setString(14,dateofjoining);
ps.setString(15,description);
ps.setString(16,trainer);
int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="generalinfo.jsp"></jsp:forward>
