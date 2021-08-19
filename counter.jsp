<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="cart.CartBean" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Register</title>
</head>
<body>

	<h1>Register</h1>
	
	<%
		List<CartBean> items = (List<CartBean>)request.getAttribute("items");
		Integer total = (Integer)request.getAttribute("total"); 
	%>
	
	<table>
		<tr>
			<th>商品名</th>
			<th>価格</th>
			<th>個数</th>
			<th>小計</th>
		</tr>
		
		<% for(CartBean bean : items){ %>
			<tr>
				<td>
					<%= bean.name %>
				</td>
				<td>
					<%= bean.price %>円
				</td>
				<td>
					<%= bean.count %>個
				</td>
				<td>
					<%= bean.price * bean.count %>円
				</td>
			</tr>
		<% } %>
			<tr>
				<th colspan="3">お支払い合計金額(税抜)</th>
				<td>
					<%= total %>円
				</td>
			</tr>
	</table>
	
	<a href="index">戻る</a> <a href="buy">支払い</a>
</body>
</html>