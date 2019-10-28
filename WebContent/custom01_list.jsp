<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.*"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	h1{
	text-align:center;
	}
	table{
	width:100%;
	text-align:center;
	}
	h3{
	text-align:center;
	}
</style>
</head>
<body>
<%
CustomDAOImpl cst_dao = CustomDAOImpl.getInstance();
ArrayList<CustomVO> customs = cst_dao.readList();
%>
	<h1>회원목록조회</h1>
	<hr>
	<table border="1">
		<tr>
			<th style="width:15%;">회원아이디</th>
			<th style="width:15%;">회원이름</th>
			<th>이메일</th>
			<th>연락처</th>
		</tr>
		<%
		for(CustomVO cst : customs) {
		%>
		<tr>
			<td><%=cst.getP_id() %></td>
			<td><%=cst.getC_name() %></td>
			<td><%=cst.getC_email() %></td>
			<td><%=cst.getC_tel() %></td>
		</tr>	
		<%
		}
		%>
	</table>
	<hr>
	<h3>HRDKOREA Copyright&copy;2015 All rights reserved. Human Resources Development Service of Korea</h3>
</body>
</html>