<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<tbody>
				<tr>
					<td>学号</td>
					<td>${obj.studentno }</td>
				</tr>
				<tr>
					<td>姓名</td>
					<td>${obj.studentname }</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>${obj.sex }</td>
				</tr>
				<tr>
					<td>手机</td>
					<td>${obj.phone }</td>
				</tr>
				<tr>
					<td>地址</td>
					<td>${obj.address }</td>
				</tr>
				<tr>
					<td>生日</td>
					<td>
						<fmt:formatDate value="${obj.borndate }" pattern="yyyy-MM-dd"/>
					</td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td>${obj.email }</td>
				</tr>
				<tr>
					<td>身份证</td>
					<td>${obj.identitycard }</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="2">
						<button class="btn btn-sm btn-info" onclick="history.go(-1)">返回</button>
					</td>
				</tr>
			</tfoot>
		</table>        
	</div>
</body>
</html>