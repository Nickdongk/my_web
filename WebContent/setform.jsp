<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<head>
<script>

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

<form action="javascript:get(document.getElementById('myform1'));" name="myform" id="myform1" method="post">
<table cellspacing=15 cellpadding=15">
<tr><td><font style="color:navy"><B>Bill Detail:</B></font></td></tr>
<tr><td><B>consumer_id:</B></td><td><input type="text" name="consumer_id"></input></td></tr>
<tr><td><B>engineer_id:</B></td><td><input type="text" name="engineer_id"></input></td></tr>
<tr><td><B>bill_id:</B></td><td><input type="text" name="bill_id"></input></td></tr>
<tr><td><B>qq_id:</B></td><td><input type="text" name="qq_id"></input></td></tr>
<tr><td><B>total:</B></td><td><input type="text" name="total"></input></td></tr>
<tr><td><B>paid:</B></td><td><input type="text" name="paid"></input></td></tr>
<tr><td><B>service:</B></td><td><input type="text" name="service" ></input></td></tr>
<tr><td><B>description:</B></td><td><input type="text" name="description" ></input></td></tr>
<tr><td></td><td><input style="padding:3px 3px" value="Save" type="submit"></td></tr>
</table>
</form>


