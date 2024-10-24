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
	<h1>Board List Page</h1>
	<table>
		<thead>
			<tr>
				<th>no.</th>
				<th>title</th>
				<th>writer</th>
				<th>regdate</th>
				<th>readCount</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list }" var="bvo">
			<tr>
				<td>${bvo.bno }</td>
				<td><a href="/brd/detail?bno=${bvo.bno }">
				<img alt="" src="/_fileUpload/_th_${bvo.imageFile }">
				${bvo.title }
				</a></td>
				<td>${bvo.writer }</td>
				<td>${bvo.regdate }</td>
				<td>${bvo.readCount }</td>
			</tr>	
			</c:forEach>
		</tbody>
		
	</table>
	<a href="/"><button>home</button></a>
</body>
</html>