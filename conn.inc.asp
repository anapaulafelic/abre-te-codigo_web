<!--no search-->
<% 
	Dim objCN, closeConection 
	closeConection = false
	objCN.CursorLocation = 3
	
	Set objCN=Server.CreateObject("ADODB.Connection")
		objCN.Open "DRIVER={MYSQL ODBC 5.3 ANSI Driver};SERVER=startapp.mysql.dbaas.com.br;PORT=3306;DATABASE=startapp;USER=startapp;PASSWORD=startapp01;OPTION=3;"
	 %>