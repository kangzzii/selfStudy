<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="/task01/getLog.do" method="post">
	<input type="hidden" name="btnType" id="hiddenInput" value="${btnType}">
	<table>
		<tr>
			<th>이름</th>
			<td colspan="3"><input type="text" name="username" value="${username}"></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><input type="text"  name="userTel" value="${userTel}"></td>
			<th rowspan="2">주소</th>
			<td rowspan="2"><input type="text" name="userAddr" value="${userAddr}"></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><input type="text" name="userMail" value="${userMail}"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan="3"><textarea name="contents">${contents}</textarea></td>
		</tr>
	</table>
	<button type="submit" id="btnSubmit">등록</button>
	<button type="button" onclick="location.href='/task01/index.do'">목록</button>
</form>
<script>
	$(function(){
		if($('#hiddenInput').val()== 'edit'){
			$('#btnSubmit').text('수정');
		}
	})
</script>