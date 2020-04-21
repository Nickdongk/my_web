<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>
			欢迎页面
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
	</head>
	<body>
	<div id="outer">
	<div id="header">
			
				<div id="logo">
					<h1>
						账单管理系统
					</h1>
				</div>	
		</div>
			<div id="banner">
				<div class="captions">
					<h2>登录</h2>
				</div>
				<img src="images/banner.jpg" alt="" />
			
			</div>
			
			<div id="nav">
					<ul>
						<li class="first">
							<a href="home.jsp">主页</a>
						</li>
						<li>
							<a href="generalinfo.jsp">新注册</a>
						</li>
						<li>
							<a href="modify.jsp">修改</a>
						</li>
						<li>
							<a href="ahome.jsp">管理员</a>
						</li>
						
						<li>
							<a href="contactus.jsp">联系我们</a>
						</li>
					</ul><br class="clear" />
				</div>


<% 
					if(request.getAttribute("notlogin_msg")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("notlogin_msg"));
					out.print("</font>");
					}
					%>
				
				
				
				<% 
					if(request.getAttribute("Error")!=null){
					out.print("<font size='2' color='red' m>");
					out.print(request.getAttribute("Error"));
					out.print("</font>");
					}
					%>
<div id="main">

<table align="right">
			
			<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
			<tr><td><div><marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color: red;">Welcome Administrator sir.
															     You Can Visit a lot of information
															     about my various Branches.and Accountants
															      </marquee></div></td></tr></table>

<h3 style="color: navy;" align="center"><B>Consultant:-   Ducat</B></h3>
<div id="box">

<form method="post" action="aloginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B> Login Form</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					
					</table>
					</form>		

<br>

</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>