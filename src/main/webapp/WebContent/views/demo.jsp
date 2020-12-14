<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <base href="${pageContext.servletContext.contextPath}/">
</head>
<body>
<select class="form-select" aria-label="Default select example">
<c:forEach var="list" items="${list }">
  <option value="${list.getMatp() }">${list.getName() }</option>
  </c:forEach>
</select>
</body>
</html>