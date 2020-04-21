<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>
			Welcome Page
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
			
		<center><a href="admin.jsp"><font style="color: navy; ">管理员登录</font></a></center>
	<div id="sidebar">
					<div class="box">
					
					<form method="post" action="loginprocess.jsp" >
					<table>
					<tr><td style="color:navy;"><B> 登录</B></td></tr>
					<tr><td><br></td></tr>
					<tr><td>分支:</td><td><select name="branch">
					<option>选择分支</option>
					<option>Ghaziabad</option>
					<option>Noida</option>
					<option>Delhi</option>
					</select></td></tr>
					<tr><td><br></td></tr>
					<tr><td>用户名:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>密码:</td><td><input type="password" name="userpass"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					</table>
					</form>		 
						</div>
				</div><br class="clear" />
			</div>		



	
			<div id="header">
					<h4>
						Copyright 2012 All rights reserved.fore more information please visit: <a href="www.javatpoint.com"><font style="color: yellow;">javatpoint.com</font></a>
					</h4>
			</div>

</div>
	</body>
</html>