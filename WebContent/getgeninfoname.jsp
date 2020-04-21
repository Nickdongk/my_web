<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("select * from student2 where id='"+n+"'");

//ps.setString(1,n);
ResultSet rs=ps.executeQuery();
out.print("<br>");
out.print("<form action='save1.jsp' name='myform' id='myform'>");
out.print("<table cellspacing=15 cellpadding=15>");
while(rs.next()){
out.print("<tr><td><font style='color:navy'><B>Bill Detail:</B></font></td></tr>");
out.print("<tr><td><B>ID:</B></td><td><input type='text' name='id' value='"+rs.getString(1)+"'></input></td></tr>");
out.print("<tr><td><B>Name:</B></td><td><input type='text' name='name' value='"+rs.getString(2)+"'></input></td></tr>");
out.print("<tr><td><B>consumer_id:</B></td><td><input type='text' name='consumer_id' value='"+rs.getString(3)+"'></input></td></tr>");
out.print("<tr><td><B>engineer_id:</B></td><td><input type='text' name='engineer_id' value='"+rs.getString(4)+"'></input></td></tr>");
out.print("<tr><td><B>bill_id:</B></td><td><input type='text' name='bill_id' value='"+rs.getString(5)+"'></input></td></tr>");
out.print("<tr><td><B>qq_id:</B></td><td><input type='text' name='qq_id' value='"+rs.getString(6)+"'></input></td></tr>");
out.print("<tr><td><B>total:</B></td><td><input type='text' name='total' value='"+rs.getInt(7) +"'></input></td></tr>");
out.print("<tr><td><B>paid:</B></td><td><input type='text' name='paid' value='"+rs.getString(8)+"'></input></td></tr>");
out.print("<tr><td><B>Date of Joining:</B></td><td><input type='text' name='dateofjoining' value='"+rs.getString(9)+"'></input></td></tr>");
out.print("<tr><td><B>service:</B></td><td><input type='text' name='service' value='"+rs.getString(10)+"'></input></td></tr>");
out.print("<tr><td><B>description:</B></td><td><input type='text' name='description' value='"+rs.getString(11)+"'></input></td></tr>");
out.print("<tr><td></td><td><input style='padding:3px 3px' value='Edit & Save' type='submit'></td></tr>");
out.print("</form>");
}

con.close();
}catch(Exception e){e.printStackTrace();}
}//end of if
%>


