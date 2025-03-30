<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="guess" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
<guess:head />
<link rel="stylesheet" href="css/pregame.css" />
<link rel="stylesheet" href="css/easyanim.css" />
</head>
<body>
	<header>
		<a href="/">Go back</a>
	</header>
	<main>
		<div id="pregame-text">
			<h1 style="text-align: center;">${message}</h1>
			<p>Let's start the game!</p>
			<a href="start" class="start button"><button class="button">Start</button></a>
		</div>
	</main>
</body>
</html>