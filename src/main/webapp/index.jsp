<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Math Quiz Application</title>

<style>
body{
    font-family: Arial, sans-serif;
    background:#e8f4fc;
}

.container{
    width:500px;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
    text-align:center;
}

input{
    width:80%;
    padding:10px;
    margin:15px;
    font-size:16px;
}

button{
    background:#007BFF;
    color:white;
    padding:10px 25px;
    border:none;
    border-radius:5px;
    cursor:pointer;
    font-size:16px;
}

button:hover{
    background:#0056b3;
}
</style>

</head>

<body>

<div class="container">

<h1>Math Quiz Application</h1>

<h3>DevOps Mini Project</h3>

<form action="quiz.jsp" method="get">

<label><b>Enter Your Name</b></label><br>

<input type="text" name="username" placeholder="Enter your name" required>

<br>

<button type="submit">Start Quiz</button>

</form>

</div>

</body>
</html>