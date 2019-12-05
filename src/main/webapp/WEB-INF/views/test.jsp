<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>반려동물 예약</title>
</head>

<body>
	<table>
		<c:forEach items="${ expiredReservations }" var="reservation">
			<tr>
				<td>${reservation.reservation_Index}</td>
				<td>${reservation.reservation_Date}</td>
				<td>${reservation.reservation_Time}</td>
				<td>${reservation.reservation_DetailService}</td>
				<td>${reservation.reservation_Check}</td>
			</tr>
		</c:forEach>
	</table>
</body>

</html>