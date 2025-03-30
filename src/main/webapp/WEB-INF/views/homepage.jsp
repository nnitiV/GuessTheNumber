<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="guess" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<guess:head />
<link rel="stylesheet" href="css/homepage.css" />
</head>
<body>
	<main>
		<div id="initial-text">
			<h1>Welcome to the Number Guessing Game!</h1>
			<p>I'm thinking of a number between 1 and 100.</p>
			<p>Pick a difficulty to start.</p>
		</div>
		<div id="difficulties">
			<a href="easy" class="easy"><button>
					Easy<br>(10 chances)
				</button></a> <a href="normal" class="normal"><button>
					Normal<br>(5 chances)
				</button></a> <a href="hard" class="hard"><button>
					Hard<br>(3 chances)
				</button></a>
		</div>
	</main>
</body>
</html>