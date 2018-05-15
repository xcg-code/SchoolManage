<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>ERROR!!</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
</head>

<body>
	<table>
		<tr>
			<td><h2>${error}</h2>
			</td>
		</tr>
		<tr>
			<td><h3>正在为您跳转 . . .</h3>
				<h2 id="time">3</h2>
			</td>
		</tr>
	</table>
	<script type="text/javascript">
		function toNextPage() {
			var currenttime = document.getElementById("time").innerHTML;
			if (currenttime > 0) {
				currenttime--;
				document.getElementById("time").innerHTML = currenttime;
			} else {
				window.history.go(-1);
			}
			setTimeout("toNextPage()", 1000);
		}
	</script>
	<script type="text/javascript">
		toNextPage();
	</script>
</body>
</html>