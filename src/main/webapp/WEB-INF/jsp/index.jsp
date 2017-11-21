<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container w-75">
		<table class="table thead-inverse table-striped table-bordered table-hover table-sm">
			<thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机</th>
					<th>地址</th>
					<th>生日</th>
					<th>邮箱</th>
					<th>身份证</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${pageinfo.list }" var="obj">
					<tr>
						<td>${obj.studentno} </td>
						<td>${obj.studentname} </td>
						<td>
							<c:if test="${obj.sex}">男</c:if>
							<c:if test="${!obj.sex}">女</c:if>
						</td>
						<td>${obj.phone} </td>
						<td>${obj.address} </td>
						<td>
							<fmt:formatDate value="${obj.borndate}" pattern="yyyy-MM-dd"/>
						</td>
						<td>${obj.email} </td>
						<td>${obj.identitycard} </td>
						<td>
							<a class="btn btn-sm btn-info" href="#">info</a>
							<a class="btn btn-sm btn-warning" href="#">edit</a>
							<a class="btn btn-sm btn-danger" href="#">remove</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>        
		<ul class="pagination">
			<li class="page-item">
				<a class="page-link" href="list?pageNum=1">首页</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="list?pageNum=${pageinfo.prePage }">上一页</a>
			</li>
			<c:forEach items="${pageinfo.navigatepageNums }" var="page">
				<li class="page-item <c:if test="${pageinfo.pageNum==page }">active</c:if>">
					<a class="page-link" href="list?pageNum=${page }">${page }</a>
				</li>
			</c:forEach>
			<li class="page-item">
				<a class="page-link" href="list?pageNum=${pageinfo.nextPage }">下一页</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="list?pageNum=${pageinfo.pages }">末页</a>
			</li>
		</ul>
	</div>
</body>
</html>