<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    table {
        width: 30%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
</style>
</head>
<body>
	<h1>Board Detail Page</h1>
    <table>
        <tr>
            <th>No.</th>
            <td>${bvo.bno}</td>
        </tr>
        <tr>
            <th>Title</th>
            <td>${bvo.title}</td>
        </tr>
        <tr>
            <th>Writer</th>
            <td>${bvo.writer}</td>
        </tr>
        <tr>
            <th>Content</th>
            <td>${bvo.content}</td>
        </tr>
        <tr>
            <th>Regdate</th>
            <td>${bvo.regdate}</td>
        </tr>
        <tr>
            <th>Moddate</th>
            <td>${bvo.moddate}</td>
        </tr>
    </table>
	<button>modify</button>
	<button>delete</button>
</body>
</html>