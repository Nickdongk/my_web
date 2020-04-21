
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<title>
			New Registration
		</title>
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



function setForm()
{
var url="setform.jsp";
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getForm;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getForm(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('hello').innerHTML=val;
}
}

function get(obj) {
    var poststr = "&name=" + encodeURI( document.getElementsByName("name").value );
                  "&consumer_id=" + encodeURI( document.getElementsByName("consumer_id").value );
                  "&engineer_id=" + encodeURI( document.getElementsByName("engineer_id").value );
                  "&bill_id=" + encodeURI( document.getElementsByName("bill_id").value );
                  "&qq_id=" + encodeURI( document.getElementsByName("qq_id").value );
                  "&total=" + encodeURI( document.getElementsByName("total").value );
                  "&paid=" + encodeURI( document.getElementsByName("paid").value );
                  "&service=" + encodeURI( document.getElementsByName("service").value );
                  "&description=" + encodeURI( document.getElementsByName("description").value );
                  
    makePOSTRequest("save.jsp", poststr);
 }
 
function makePOSTRequest(url, parameters) {
      http_request=false;
      if (window.XMLHttpRequest) { // Mozilla, Safari,...
         http_request = new XMLHttpRequest();
         if (http_request.overrideMimeType) {
         	// set type accordingly to anticipated content type
            //http_request.overrideMimeType('text/xml');
            http_request.overrideMimeType('text/html');
         }
      } else if (window.ActiveXObject) { // IE
         try {
            http_request = new ActiveXObject("Msxml2.XMLHTTP");
         } catch (e) {
            try {
               http_request = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {}
         }
      }
      if (!http_request) {
         alert('Cannot create XMLHTTP instance');
         return false;
      }
      
		http_request.onreadystatechange = alertContents;
     	http_request.open('POST', url, true);
     	http_request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
      http_request.setRequestHeader("Content-length", parameters.length);
      http_request.setRequestHeader("Connection", "close");
      http_request.send(parameters);
    
   }

</script>
</head>

<div id="outer">
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
<% 
if(request.getAttribute("new_id")!=null){
	out.print("<font size='2' color='red' m>");
	out.print("新ID为" + request.getAttribute("new_id"));
	out.print("</font>");
	}
%>

<body width="100">

<div id="main">


<h3 style="color: navy;" align="center"><B>Consultant:-   Ducat</B></h3>
<div id="box">

<form action="save.jsp" name="myform" id="hello" method="post">
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

</td>
</tr>

</table>


</form>


</div>

</div>

</body>


<jsp:include page="footer.jsp"></jsp:include>

</div>

</html>