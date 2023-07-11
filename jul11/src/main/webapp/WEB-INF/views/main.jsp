<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main</h1>
	${name }
	<br> JSTL / EL
	<br>
	<!--
		JSTL 태그
	 
		begin : 시작번호
		end : 끝번호
		var : 변수
		step : 증감 
		test : 조건식
	-->
	<c:forEach begin="1" end="10" var="i">
		<!-- 
			lt = "<" 
			gt = ">"
			ge = ">="
			le = "<="
			eq = "="
			ne = "!="
		-->
		<%-- 
		<c:if test="${ i ne 3 }">
			${i }<br>
		</c:if> 
		--%>

		<!-- 
		choose 안에서 사용
		when : if같은 구문
		otherwise : else if같은 구문
		 -->
		<c:choose>
			<c:when test="${i eq 3 }">
				삼입니다.<br>
			</c:when>

			<c:otherwise>
				${i }<br>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	set		k = 케이<br>
	<c:set var="k" value="케이"/>
	<c:set var="k">새로운 값</c:set>
	${k }	
	<br>	
	out = 변수라고 써두겠습니다.
	<c:out value="글자"></c:out>
	<c:out value="${k }"></c:out>
	<br>
	M = Model = data<br>
	V = View = jsp<br>
	C = Controller = 흐름제어
	
	
	<c:remove var="k"/>
	${k }
	<hr>
	
	<c:forEach items="${list }" var="i">
		${i }<br>	
	</c:forEach>
	
	
	
</body>
</html>
