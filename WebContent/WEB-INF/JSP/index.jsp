<%@page contentType='text/html' pageEncoding='UTF-8' session='false'%>
<!doctype html>
<html lang='nl'>
	<head>
		<title>Frituur Frida</title>
		<link rel='icon' href='images/favicon.ico'>
		<meta name='viewport' content='width=device-width,inital-scale=1'>
		<link rel='stylesheet' href='styles/default.css'>
	</head>
	<body>
		<h1>Vandaag zijn we ${openGesloten}</h1>
		<img src='images/${openGesloten}.png' alt='${openGesloten}'>
		<h2>Adres</h2>
		${adres.straat} ${adres.huisNr}<br>
		${adres.gemeente.postcode} ${adres.gemeente.naam}
	</body>
</html>