<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
String username=request.getParameter("username");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Math Quiz</title>

<style>
body{
font-family:Arial;
background:#f2f2f2;
}

.container{
width:600px;
margin:40px auto;
background:white;
padding:25px;
border-radius:10px;
box-shadow:0px 0px 10px gray;
}
</style>

</head>

<body>

<div class="container">

<h2>Welcome <%=username%></h2>

<form action="result.jsp" method="post">

<input type="hidden" name="username" value="<%=username%>">

<p>1. 5 + 5 = ?</p>
<input type="number" name="q1" required>

<p>2. 8 × 2 = ?</p>
<input type="number" name="q2" required>

<p>3. 20 - 10 = ?</p>
<input type="number" name="q3" required>

<p>4. 9 + 6 = ?</p>
<input type="number" name="q4" required>

<p>5. 12 ÷ 3 = ?</p>
<input type="number" name="q5" required>

<br><br>

<input type="submit" value="Submit Quiz">

</form>

</div>

</body>
</html>