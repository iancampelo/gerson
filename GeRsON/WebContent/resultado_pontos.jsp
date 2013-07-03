<%@page import="model.funcionarios.pf.PessoaFisica"%>
<%@page import="controller.business.BusinessController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<%
	if(session.getAttribute("funcionario") == null)
		response.sendRedirect("index.jsp?item=0");
	else{
		
	
		PessoaFisica pessoaFisica = (PessoaFisica) session.getAttribute("funcionario");
		
	%>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1">
<meta http-equiv="content-language" content="pt-br" />
<meta name="description" content="GeRsON - Ger�ncia de Recursos On-line" />
<meta name="keywords"
	content="cadastro de cliente, controle de almoxarifado" />
<link rel="stylesheet" type="text/css" href="css/screen.css">

<title>GeRsON</title>

<!-- Pegando o par�metro da servlet -->
<%
BusinessController business = (BusinessController)session.getAttribute("pesquisa");
%>

<body>
	<div id="layout">
	<div id="main">
	
	<h3>Relat�rio de Ponto - <%=pessoaFisica.getNome() %></h3>
	
	<table>
	<tr>
	<td>Op��o</td>
	<td>Data</td>
	<td>Hor�rio</td>
	</tr>
	<%
	for(int i=0;i<business.getPontos().length;i++){ 
	%>
		<tr>
		<td><%=business.getPontos()[i].getOpcao() %></td>
		<td><%=business.getPontos()[i].getData() %></td>
		<td><%=business.getPontos()[i].getHora() %></td>
		</tr>
	<%} %>
	</table>
	<br><br><br>
	</div>
	</div>
</body>
	<%
	}
	%>
</html>