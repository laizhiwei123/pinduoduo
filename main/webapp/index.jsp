<%--
  Created by IntelliJ IDEA.
  User: lingfeng
  Date: 2019/11/28
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button type="button" onclick="loadXMLDoc();">a</button>
<script>
    function loadXMLDoc() {
        console.log("Hello");
        var xmlhttp;
        if (window.XMLHttpRequest) {
            //  IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
            xmlhttp = new XMLHttpRequest();
        }
        else {
            // IE6, IE5 浏览器执行代码
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            console.log("xmlhttp.readyState" +xmlhttp.readyState +"xmlhttp.status" +xmlhttp.status);
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                console.log(xmlhttp.responseText);
            }
        }
        xmlhttp.open("GET", "/hello", false);
        xmlhttp.send();
    }
</script>
</body>
</html>
