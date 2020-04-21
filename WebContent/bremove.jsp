<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String n=request.getParameter("val");
if(n.length()>0){
try{

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("delete from student2 where id ='"+n+"'");
ps.executeUpdate();
con.close();
request.setAttribute("delete_msg","记录已经被成功删除！");
}catch(Exception e){e.printStackTrace();}
}//end of if
%>
<jsp:forward page="home.jsp"></jsp:forward>