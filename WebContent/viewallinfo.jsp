<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("select * from student2 where id ='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<table border='5' cellspacing=5 cellpadding=2>");

while(rs.next()){
out.print("<tr><td><B>ID</B></td><td>"+rs.getString(1)+"</td></tr>");
out.print("<tr><td><B>Name</B></td><td>"+rs.getString(2)+"</td></tr>");
out.print("<tr><td><B>consumer_id</B></td><td>"+rs.getString(3)+"</td></tr>");
out.print("<tr><td><B>engineer_id</B></td><td>"+rs.getString(4)+"</td></tr>");
out.print("<tr><td><B>bill_id</B></td><td>"+rs.getString(5)+"</td></tr>");
out.print("<tr><td><B>qq_id</B></td><td>"+rs.getString(6)+"</td></tr>");
out.print("<tr><td><B>total</B></td><td>"+rs.getInt(7)+"</td></tr>");
out.print("<tr><td><B>paid</B></td><td>"+rs.getInt(8)+"</td></tr>");
out.print("<tr><td><B>dateofjoining</B></td><td>"+rs.getString(9)+"</td></tr>");
out.print("<a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:sendGenInfo(this.name)' ><font style='color: navy;'><B>General Information</B></font></a>");
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>