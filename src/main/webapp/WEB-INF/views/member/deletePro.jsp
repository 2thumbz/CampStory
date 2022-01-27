<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<title>회원 탈퇴 프로</title>

</head>

<body>
<%@ include file = "../include/header.jsp" %>

<h1>deletePro.jsp 페이지 입니다 ... ! </h1>

<c:if test="${result == 1}">
	<script>
		alert("탈퇴 되었습니다.");
		window.location="/main";
	</script>
</c:if>

<c:if test="${result != 1}">
	<script>
		alert("비밀번호를 확인하세요.");
		history.go(-1);
	</script>
</c:if>

</body>