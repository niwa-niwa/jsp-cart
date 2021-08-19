<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Index</title>
</head>
<body>

	<h1>Index</h1>
	
	<table>
		<tr>
			<th>商品名</th>
			<th>価格</th>
			<th>個数</th>
			<th>カートへ追加</th>
			<th>カートクリア</th>
		</tr>
		<tr>
			<td>お茶</td>
			<td>100円</td>
			<td>3個</td>
			<td>
				<a href="add">追加</a>
			</td>
			<td>
				<a href="clear">クリア</a>
			</td>
		</tr>
	</table>
	
	<a href="counter.jsp">レジへ</a>
	
</body>
</html>