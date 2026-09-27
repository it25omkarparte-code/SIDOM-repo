<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
String username = request.getParameter("username");

int score = 0;

if("10".equals(request.getParameter("q1"))) score++;
if("16".equals(request.getParameter("q2"))) score++;
if("10".equals(request.getParameter("q3"))) score++;
if("15".equals(request.getParameter("q4"))) score++;
if("4".equals(request.getParameter("q5"))) score++;

int percentage = score * 20;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz Result</title>

<style>

body{
    background:#f4f4f4;
    font-family:Arial;
}

.container{
    width:500px;
    margin:70px auto;
    background:white;
    padding:30px;
    text-align:center;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}

table{
    margin:auto;
    border-collapse:collapse;
    width:80%;
}

table,th,td{
    border:1px solid gray;
    padding:10px;
}

button{
    margin-top:20px;
    padding:10px 25px;
    background:#007BFF;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#0056b3;
}

</style>

</head>

<body>

<div class="container">

<h1>Math Quiz Result</h1>

<table>

<tr>
<th>Student Name</th>
<td><%=username%></td>
</tr>

<tr>
<th>Score</th>
<td><%=score%> / 5</td>
</tr>

<tr>
<th>Percentage</th>
<td><%=percentage%>%</td>
</tr>

<tr>
<th>Status</th>

<td>

<%
if(score>=3){
%>

PASS

<%
}else{
%>

FAIL

<%
}
%>

</td>

</tr>

</table>

<br>

<%
if(score==5){
%>

<h2 style="color:green;">Excellent! 🎉</h2>

<%
}else if(score>=3){
%>

<h2 style="color:blue;">Good Job!</h2>

<%
}else{
%>

<h2 style="color:red;">Keep Practicing!</h2>

<%
}
%>

<a href="index.jsp">

<button>Play Again</button>

</a>

</div>

</body>
</html>