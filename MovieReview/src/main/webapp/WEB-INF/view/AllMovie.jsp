<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Movies</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: #f4f7fa;
	color: #333333;
	margin: 0;
	padding: 20px;
}
/* Header list styles */
ul {
	display: flex;
	justify-content: space-between;
	align-items: center;
	list-style: none;
	padding: 12px 20px;
	margin: 0 0 30px 0;
	background: #1e3a8a; /* Rich Blue */
	border-radius: 8px;
}

li {
	margin: 0;
	flex: 1;
	text-align: center;
	color: #ffffff;
	font-weight: 600;
	font-size: 1rem;
}

li:first-child {
	text-align: left;
}

li:last-child {
	text-align: right;
}

ul li a {
	color: #93c5fd; /* Light Blue */
	text-decoration: none;
	margin-left: 1rem;
	font-weight: 500;
}

ul li a:hover {
	text-decoration: underline;
}

form {
	margin: 0;
	display: inline-block;
}

input[type="submit"], input[type="search"] {
	font-size: 0.9rem;
	padding: 6px 12px;
	border-radius: 6px;
	border: none;
	outline: none;
	transition: background-color 0.3s ease;
}

input[type="submit"] {
	background-color: #3b82f6; /* Bright Blue */
	color: white;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #2563eb;
}

input[type="search"] {
	width: 180px;
	padding: 6px 10px;
	border: 1px solid #cbd5e1;
}

input[type="search"]:focus {
	border-color: #3b82f6;
	box-shadow: 0 0 5px rgba(59, 130, 246, 0.5);
}

h1 {
	text-align: center;
	color: #1e3a8a;
	font-weight: 700;
	margin-bottom: 24px;
	font-size: 2rem;
	letter-spacing: 1px;
}

.movie-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	gap: 24px;
	max-width: 1100px;
	margin: 0 auto 40px auto;
}

.movie-item {
	background: white;
	border-radius: 14px;
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.12);
	width: 240px;
	overflow: hidden;
	transition: transform 0.3s ease, box-shadow 0.3s ease;
	cursor: pointer;
	display: flex;
	flex-direction: column;
	text-align: center;
}

.movie-item:hover {
	transform: translateY(-8px);
	box-shadow: 0 16px 32px rgba(0, 0, 0, 0.18);
}

.movie-item img {
	width: 100%;
	height: 320px;
	object-fit: cover;
	border-bottom: 3px solid #1e3a8a;
}

.movie-item a {
	color: inherit;
	text-decoration: none;
	display: block;
	height: 100%;
}

.movie-item h4 {
	margin: 8px 0;
	color: #1e3a8a;
	font-weight: 600;
}

@media ( max-width : 1000px) {
	.movie-container {
		max-width: 90%;
		gap: 18px;
	}
	.movie-item {
		width: 200px;
	}
}

@media ( max-width : 600px) {
	.movie-container {
		max-width: 100%;
		gap: 16px;
		justify-content: center;
	}
	.movie-item {
		width: 90%;
		max-width: 320px;
	}
}
</style>
</head>
<body>
	<ul>
		<li>
			<form action="/MovieReview/index">
				<input type="submit" value="Home">
			</form>
			<form action="${pageContext.request.contextPath}/AllMovie">
				<input type="submit" value="All Movie">
			</form>
		</li>
		<li>
			<form action="/MovieReview/SelectedFlim">
				<input type="search" name="search" placeholder="Enter Film Name" />
				<input type="submit" value="Search" />
			</form>
		</li>
		<li>
			<%
			if (session.getAttribute("UserName") == null && session.getAttribute("AdminName") == null) {
			%> <a href="LoginCheck.jsp">User Login</a> <a
			href="AdminLoginCheck.jsp">Admin Login</a> <a href="CreateUser.jsp">Create
				New Account</a> <%
 } else if (session.getAttribute("UserName") != null) {
 %> <%=session.getAttribute("UserName")%>
			<form action="/MovieReview/profile" style="display: inline">
				<input type="submit" value="Profile">
			</form> <%
 } else if (session.getAttribute("AdminName") != null) {
 %> <%=session.getAttribute("AdminName")%>
			<form action="/MovieReview/profile" style="display: inline">
				<input type="submit" value="Profile">
			</form> <%
 }
 %>
		</li>
	</ul>
	<h1>All Movies</h1>
	<div class="movie-container">
		<%
		List movies = (List) session.getAttribute("movies");
		if (movies != null && !movies.isEmpty()) {
			for (int i = 0; i < movies.size(); i++) {
				request.setAttribute("movie", movies.get(i));
		%>
		<div class="movie-item">
			<a href="/MovieReview/SelectedFlim?search=${movie.movieName}"> <img
				src="${pageContext.request.contextPath}/image/${movie.movieImageURL}"
				alt="${movie.movieName}" />
				<h4>${movie.movieName}</h4>
				<h4>Rating: ${movie.movieRating}</h4>
				<h4>Released: ${movie.releaseDate}</h4>
				<h4>Genre: ${movie.genre}</h4>
			</a>
		</div>
		<%
		}
		} else {
		%>
		<p style="text-align: center; width: 100%; color: #6b7280;">No
			movies available.</p>
		<%
		}
		%>
	</div>

</body>
</html>
