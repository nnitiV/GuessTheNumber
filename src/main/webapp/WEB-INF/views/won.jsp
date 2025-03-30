<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="guess" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<guess:head />
<link
	href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/won.css" />
</head>
<body>
	<main>
		<h1>🏆 Victory achieved! 🏆</h1>
		<p>With ${attempts} attempts remaining!</p>
		<a href="/">⚔️ Play again ⚔️</a>
	</main>
</body>
</html>