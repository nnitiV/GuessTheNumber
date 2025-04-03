<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="guess" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html>
<head>
<guess:head />
<link rel="stylesheet" href="css/game.css" />
</head>
<body>
	<header>
		<a href="/">Give up</a>
	</header>
	<main>
		<h1>${attempts} ATTEMPTS REMAINING!</h1>
		<form action="guess">
			<input type="number" min="1" max="100" name="guess" placeholder="?"
				required> <input type="submit" value="LAUNCH GUESS">
		</form>
	</main>
</body>
</html>