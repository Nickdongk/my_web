<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>

<script>
var request;
function sendInfo()
{
var v=document.myform.findName.value;
var url="findname1.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hi').innerHTML=val;
}
}

function sendGenInfo(name)
{
var v=name;
var url="getgeninfoname.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getGenInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getGenInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}


</script>
</head>

<div id="outer">
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<jsp:include page="header.jsp"></jsp:include>


<%
String islogin=(String)session.getAttribute("islogin");
if(islogin==null){
request.setAttribute("notlogin_msg","Sorry,Please do Login first");
%>
<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>



<body>
<h3 style="color: navy;" align="center"><B>Consultant:-   Ducat</B></h3>
<div id="box">

<form action="save1.jsp" name="myform" id="hello" method="post">
<table width="100%">
<tr>
<td><table width="55%" align="left" style="table-layout: fixed;">
		<tr><td>
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>Bill Detail:</B></font></td></tr>
<tr><td><B>Name:</B></td><td><input type="text" name="name" ></input></td></tr>
<tr><td><B>Cosumer_id:</B></td><td><input type="text" name="consumer_id"></input></td></tr>
<tr><td><B>Engineer_id:</B></td><td><input type="text" name="engineer_id"></input></td></tr>
<tr><td><B>Bill_id:</B></td><td><input type="text" name="bill_id"></input></td></tr>
<tr><td><B>QQ_id:</B></td><td><input type="text" name="qq_id"></input></td></tr>
<tr><td><B>Total:</B></td><td><input type="text" name="total"></input></td></tr>
<tr><td><B>Paid:</B></td><td><input type="text" name="paid"></input></td></tr>
<tr><td><B>Service:</B></td><td><input type="text" name="service" ></input></td></tr>
<tr><td><B>Description:</B></td><td><input type="text" name="description"></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value="Save" type="submit"></td></tr>
</table>

		
		</table>
<table align="right" width="25%" >
<tr>
<td><font style="color: navy;"><B>Search:</B></font><input type="text" name="findName" onkeyup="sendInfo()"></input></td>
</tr>
<tr><td><div id="hi"></div></td></tr>

</table>
</td>
</tr>

</table>


</form>


</div>
</body>






<jsp:include page="footer.jsp"></jsp:include>
</div>
</html>