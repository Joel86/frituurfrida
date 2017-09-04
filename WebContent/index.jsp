<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<%@page import='java.time.DayOfWeek'%>
<%@page import='java.time.LocalDate'%>
<!doctype html>
<html lang='nl'>
	<head>
		<title>Frituur Frida</title>
		<link rel='icon' href='images/favicon.ico'>
		<meta name='viewport' content='width=device-width,inital-scale=1'>
		<link rel='stylesheet' href='styles/default.css'>
	</head>
	<body>
		<h1>Vandaag zijn we
		<%
		LocalDate vandaag = LocalDate.now();
		DayOfWeek weekdag = vandaag.getDayOfWeek();
		out.print(weekdag == DayOfWeek.MONDAY || weekdag == DayOfWeek.THURSDAY ? 
			"gesloten" : "open");
		%>
		</h1>
	</body>
</html>