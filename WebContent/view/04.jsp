<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberVo vo1= new MemberVo();
	vo1.setNo(1L);
	vo1.setEmail("dddddd");
	pageContext.setAttribute("vo1", vo1);

	pageContext.setAttribute("", vo1);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>객체 접근</h3>
	${pageScope.vo1.no }<br> <!-- 값이 저장되어있는 표현식으로 값을 가져오며 메소드는 사용할 수 없다. 내부적으로 메소드를 불러서 값을 가지고 온다. -->
	${pageScope.vo1.email }<br>
	${requestScope.vo2.no }<br>
	${requestScope.vo2.email }<br>
	${sessionScope.vo3.no }<br>
	${sessionScope.vo3.email }<br>
	${applicationScope.vo4.no }<br>
	${applicationScope.vo4.email }<br>
	
	<h3>scaope2로 접근</h3>
	${vo1.no }<br> <!-- scope를 생략하여 사용가능. -->
	${vo1.email }<br>
	${vo2.no }<br>
	${vo2.email }<br>
	${vo3.no }<br>
	${vo3.email }<br>
	${vo4.no }<br>
	${vo4.email }<br>
	
	
</body>
</html>