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
	<h1>Board Modify Page</h1>
<<<<<<< HEAD
	<img alt="" src="/_fileUpload/${bvo.imageFile }">

	<form action="/brd/update" method="post" enctype="multipart/form-data">
=======
	<form action="/brd/update" method="post">
>>>>>>> origin/main
	<input type="hidden" name="bno" value="${bvo.bno }">
	    <table>
	        <tr>
	            <th>No.</th>
	            <td>${bvo.bno}</td>
			<%-- <td><input type="text" name="bno" value="${bvo.bno}" readonly="readonly">${bvo.bno}</td> --%>
	        </tr>
	        <tr>
	            <th>Title</th>
	            <td><input type="text" name="title" value="${bvo.title }"></td>
	        </tr>
	        <tr>
	            <th>Writer</th>
	            <td>${bvo.writer}</td>
	        </tr>
	        <tr>
	            <th>Content</th>
	            <td><textarea rows="10" cols="50" name="content">${bvo.content }</textarea></td>
	        </tr>
	        <tr>
	            <th>Regdate</th>
	            <td>${bvo.regdate}</td>
	        </tr>
	        <tr>
	            <th>Moddate</th>
	            <td>${bvo.moddate}</td>
	        </tr>
<<<<<<< HEAD
	        <!-- 파일 변경 -->
	        <tr>
	            <th>ImageFile</th>
	            <td>
	            	<input typr="hidden" name="imageFile" value="${bvo.imageFile }">
	            	<input type="file" name="newFile" accept="image/jpg, image/gif, image/jpeg">
	            </td>
	        </tr>
=======
>>>>>>> origin/main
	    </table>
    <!-- 수정버튼을 누르면 내가 수정한 내용을 가지고(form => submit) 컨트롤러로 이동 -->
	<button type="submit">modify commit</button>
	</form>
    
	<!-- 리스트 버튼을 누르면 리스트페이지로 이동 -->
	<a href="/brd/list"><button type="button">list</button></a>
</body>
</html>