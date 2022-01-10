<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    


<head>
<title>CampStory - 캠핑장 목록</title>

</head>

<body>


  <c:if test="${count == 0}">
<table width="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      등록된 캠핑장이 없습니다.
    </td>
  </tr>
</table>
</c:if>
    
    
<b>캠핑장 리스트 (전체 캠핑장:${count })</b>
<hr color="#DFD8CA" size="2"  align="center" />
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    
<c:forEach items="${list}" var="campDTO">
<div align="center">
	<br/>
   <a href="/camp/info?contentid=${campDTO.contentid }&pageNum=${pageNum}">
  <h3>${campDTO.facltnm }</h3></a> <br/> 
    ${campDTO.sigungunm }<br/>
    ${campDTO.induty } <br/>
	<c:if test="${campDTO.lineintro == '0'}">
		
	</c:if> 
	<c:if test="${campDTO.lineintro != '0' }">
		${campDTO.lineintro }<br/>
	</c:if> 
    <br/>
    <c:if test="${campDTO.firstimageurl == '0'}">
    	<img src="https://i.ibb.co/G2kJKb2/logo-campstory.png" width="300px" height="250px"/>
    </c:if>
    
    <c:if test="${campDTO.firstimageurl != '0' }">
    	<img src= "${campDTO.firstimageurl }" width="300px" height="250px" /><br/>
    </c:if>
    
    <br/>
    <hr color="#DFD8CA" size="2"  align="center" />
    <br/>
</div>	  
</c:forEach>
	
</table>
<c:if test="${count > 0}">
<div align="center">	
   <fmt:parseNumber var="result" value="${currentPage / 10}" integerOnly="true" />
  
   <c:if test="${endPage > pageCount}">
        <c:set var="endPage" value="${pageCount}"/>
   </c:if> 
          
   <c:if test="${startPage > 10}">
        <a href="/camp/list?pageNum=${startPage - 10 }">[이전]</a>
   </c:if>

   <c:forEach var="i" begin="${startPage}" end="${endPage}">
       <a href="/camp/list?pageNum=${i}">[${i}]</a>
   </c:forEach>

   <c:if test="${endPage < pageCount}">
        <a href="/camp/list?pageNum=${startPage + 10}">[다음]</a>
   </c:if>
</c:if>
</div>
</center>
</body>

