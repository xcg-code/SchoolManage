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
			<td><h2>
					<s:property value="loginError" />
				</h2></td>
		</tr>
		<tr>
			<td><h2 id="time">3</h2>
				<h3>${error}</h3></td>
		</tr>
		<tr>
			<td><h3>正在为您跳转 . . .</h3></td>
		</tr>
	</table>
	<script type="text/javascript">
		setTimeout("history.go(-1)", 3000);
	</script>
	<SCRIPT language=javascript>
		function go() {
			window.history.go(-1);
		}
		setTimeout("go()", 3000);
	</SCRIPT>
</body>
</html>