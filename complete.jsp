<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Complete</title>
</head>
<body>

	<h1>Complete</h1>
	
	<% Integer total = (Integer)request.getAttribute("total"); %>
	
	<p>ご購入ありがとうございました。</p>
	<p>合計金額 : <%= total %>円 </p>
	<a href="index">戻る</a>

</body>
</html>