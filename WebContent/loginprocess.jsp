<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String username=request.getParameter("username");
System.out.print(username);
String userpass=request.getParameter("userpass");
String branch=request.getParameter("branch");
boolean status=false;
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:MySQL://localhost:3306/test_bill","root","654321");
PreparedStatement ps=con.prepareStatement("select * from payregister where username=? and userpass=? and branch=? ");
ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,branch);
ResultSet rs=ps.executeQuery();
status=rs.next();
if(status){
System.out.print("hi");
username=rs.getString(2);
session.setAttribute("username",String.valueOf(username));
session.setAttribute("islogin","plz sign in first");

%>
<jsp:forward page="home.jsp"></jsp:forward>
<%
}
else{
System.out.print("hi");
request.setAttribute("Error","对不起！用户名或者密码错误！");
session.setAttribute("Loginmsg","请先登录！");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
}

catch(Exception e){
e.printStackTrace();
}

%>