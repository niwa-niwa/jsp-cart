<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="cart.CartBean" %>
<%@ page import="cart.Item" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Index</title>
</head>
<body>

	<h1>Index</h1>
	
	<%
		List<Item> items = (List<Item>)request.getAttribute("items");
		Map<String, CartBean> map = (Map<String, CartBean>)request.getAttribute("map");
	%>
	
	<table>
		<tr>
			<th>商品名</th>
			<th>価格</th>
			<th>個数</th>
			<th>カートへ追加</th>
			<th>カートクリア</th>
		</tr>
		
		<% for(Item item : items){ %>
			<tr>
				<td><%= item.name %></td>
				<td><%= item.price %>円</td>
				<td>
					<% CartBean cartBean = map.get(item.id); %>
					<%= cartBean == null ? 0 : cartBean.count %>個
				</td>
				<td>
					<a href="add?id=<%= item.id %>">追加</a>
				</td>
				<td>
					<a href="clear?id=<%= item.id %>">クリア</a>
				</td>
			</tr>
		<% } %>
	</table>
	
	<a href="counter">レジへ</a>
	
</body>
</html>