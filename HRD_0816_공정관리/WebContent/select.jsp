<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 조회</title>
</head>
<body>
	<%@ include file="header.jsp"%>

	<h1 class="제품조회">제품조회</h1>
	<table id="제품조회1">
		<tr>
			<th>작업지시번호</th>
			<th>제품코드</th>
			<th>제품명</th>
			<th>준비</th>
			<th>인쇄</th>
			<th>코딩</th>
			<th>합지</th>
			<th>접지</th>
			<th>접합</th>
			<th>포장</th>
			<th>최종겅정일자</th>
			<th>최종공정시간</th>

		</tr>

		<%
			sql = "select w_workno, p_code, p_name, p_p1, p_p2, p_p3,p_p4, p_p5, p_p6, w_lastdate, w_lasttime";
		sql += " from tbl_product natural join tbl_process ";
		sql += " where w_workno = ?";

		rs = stmt.executeQuery(sql);

		while (rs.next()) {
		%>
		<table border="1">
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(9)%></td>
				<td><%=rs.getString(10)%></td>
				<td><%=rs.getString(11)%></td>
			</tr>
		</table>


		<%
			}
		%>

	</table>

</body>
</html>