<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="string1" value="This is first String." />
	<c:set var="string2" value="${fn:split(string1, ' ')}" />
	<c:forEach var="word" items="${string2}">
    	<p>${word}</p> 
	</c:forEach>
	<c:set var="string3" value="${fn:join(string2, '-')}" />
	<p>Final String : ${string3}</p>
	<c:set var="slength" value="${fn:length(string3) }"/>
	<p>String의 길이 : ${slength}</p>
	<p>test의 처음 위치 : ${fn:indexOf(string3,"first") }</p>
</body>
</html>






