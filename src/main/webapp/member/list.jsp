<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    table {
        width: 50%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        border: 1px solid #ccc;
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
	<h1>Member List Page</h1>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>email</th>
				<th>phone</th>
				<th>regdate</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="mvo">
			<tr>
				<td>${mvo.id }</td>
				<td>${mvo.email }</td>
				<td>${mvo.phone }</td>
				<td>${mvo.regdate }</td>
			</tr>	
			</c:forEach>
		</tbody>
		
	</table>
	<a href="/"><button>home</button></a>
</body>
</html>