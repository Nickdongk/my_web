<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%@page import="org.apache.taglibs.standard.tag.common.fmt.SetBundleSupport"%>
<%try{
Calendar rightNow = Calendar.getInstance();
System.out.print(request.getParameter("name"));

java.util.Date date = new java.util.Date();
String id = String.format("%d%d%d%d%d%d", 
	rightNow.get(Calendar.YEAR),
	rightNow.get(Calendar.MONTH),
	rightNow.get(Calendar.DAY_OF_MONTH),
	rightNow.get(Calendar.HOUR_OF_DAY),
	rightNow.get(Calendar.MINUTE),
	rightNow.get(Calendar.SECOND));
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
PreparedStatement ps=con.prepareStatement("update student2 set name='"+name+
"',consumer_id='"+consumer_id+
"',engineer_id='"+engineer_id+
"',bill_id='"+bill_id+
"',qq_id='"+qq_id+
"',paid='"+paid+
"',dateofjoining='"+dateofjoining+
"',service='"+service+
"',description='"+description+
"'  where id= '"+id+
"'");

int s=ps.executeUpdate();
System.out.print(s);
}catch(SQLException e2){
e2.printStackTrace();
}
%>

<jsp:forward  page="modify.jsp"></jsp:forward>
