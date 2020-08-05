<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Lab  -- hoangnqph06760</title>
<base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
	<h1>TEST IO</h1>
	
	
		<c:forEach var="u" items="${views}">
			
				<div>${u.account.username} </div>

			
			
		</c:forEach>
	
	
	
	
	
	
</body>
</html>