<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%try{
	Calendar rightNow = Calendar.getInstance();
System.out.print(request.getParameter("name"));

java.util.Date date = new java.util.Date();
String id = String.format("%d%d%d%d%d%d", 
		rightNow.get(Calendar.YEAR),
		rightNow.get(Calendar.MONTH) + 1,
		rightNow.get(Calendar.DAY_OF_MONTH),
		rightNow.get(Calendar.HOUR_OF_DAY),
		rightNow.get(Calendar.MINUTE),
		rightNow.get(Calendar.SECOND));
System.out.print(id);
String name=request.getParameter("name");
String consumer_id=request.getParameter("consumer_id");
String engineer_id=request.getParameter("engineer_id");
String bill_id=request.getParameter("bill_id");
String qq_id=request.getParameter("qq_id");
String total=request.getParameter("total");
String paid=request.getParameter("paid");


String dateofjoining = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);

String service=request.getParameter("service");
String description=request.getParameter("description");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("insert into student2 values(?,?,?,?,?,?,?,?,?,?,? )");

ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, consumer_id);
ps.setString(4, engineer_id);
ps.setString(5, bill_id);
ps.setString(6, qq_id);
ps.setInt(7, Integer.parseInt(total));
ps.setInt(8, Integer.parseInt(paid));
ps.setString(9, dateofjoining);
ps.setString(10, service);
ps.setString(11, description);


int s=ps.executeUpdate();
System.out.print(s);
request.setAttribute("new_id", id);
}catch(SQLException e2){
e2.printStackTrace();
}
%>
<jsp:forward page="generalinfo.jsp"></jsp:forward>
