<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<%@include file="../include/header.jsp" %>

<table class="table table-bordered">
  <tr>
    <th style="width: 10px">BNO</th>
    <th>TITLE</th>
    <th>WRITTER</th>
    <th>REGDATE</th>
    <th style="width:40px">VIEWCNT</th>
  </tr>

<c:forEach items="#{list}" var="boardVo">
	<tr>
		<td>${boardVo.bno}</td>
		<td><a href='/board/read?bno=${boardVo.bno}'>${boardVo.title}</a></td>
		<td>${boardVo.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVo.regdate}"/></td>
		<td><span class="badge bg-red">${boardVo.viewcnt}</span></td>
	</tr>
		
</c:forEach>
</table>
<script>
var result = '${msg}';
if(result == 'SUCCESS'){
	alert("처리가 완료되었습니다.");
}
</script>
<%@include file="../include/footer.jsp" %>