<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Register</title>
</head>
<body>

	<h1>Register</h1>
	
	<table>
		<tr>
			<th>商品名</th>
			<th>価格</th>
			<th>個数</th>
			<th>小計</th>
		</tr>
		<tr>
			<td>お茶</td>
			<td>100円</td>
			<td>3個</td>
			<td>300円</td>
		</tr>
		<tr>
			<th colspan="3">お支払い合計金額(税抜き)</th>
			<td>300円</td>
		</tr>
	</table>
	
	<a href="index.jsp">戻る</a> <a href="complete.jsp">支払い</a>
</body>
</html>