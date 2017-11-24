<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
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
	<div class="container w-50 h-100" style="overflow: hidden;">
		<form action="do_save" method="post">
		  	<div class="form-group">
		  		<label for="studentno">Student No:</label>
		    	<input type="text" name="studentno" class="form-control" id="studentno" placeholder="1002" pattern="[0-9]{4,4}" required="required" oninvalid="setCustomValidity('请输入四位学号')" oninput="setCustomValidity('')">
		    	
		    	<label for="loginPwd">LoginPwd:</label>
		    	<input type="text" name="loginpwd" class="form-control" id="loginPwd"  placeholder="123456" pattern="\w{6,}" required="required" oninvalid="setCustomValidity('密码最少6位字符')" oninput="setCustomValidity('')">
		    	
		    	<label for="studentName">StudentName:</label>
		    	<input type="text" name="studentname" class="form-control" id="studentName" placeholder="arvin" required="required" oninvalid="setCustomValidity('姓名必填')" oninput="setCustomValidity('')">

		    	<label for="gradeId">GradeId:</label>
		    	<input type="number" name="gradeid" class="form-control" id="gradeId" placeholder="1" required="required" oninvalid="setCustomValidity('班级编号必填')" oninput="setCustomValidity('')">

		    	<label for="phone">Phone:</label>
		    	<input type="tel" name="phone" class="form-control" id="phone" placeholder="请输入手机号" required="required" oninvalid="setCustomValidity('手机号格式不正确')" oninput="setCustomValidity('')">

		    	<label for="address">Address:</label>
		    	<input type="text" name="address" class="form-control" id="address" placeholder="请输入居住地址" >
		
		    	<label for="bornDate">BornDate:</label>
		    	<input type="date" name="borndate" class="form-control" id="bornDate" required="required" oninvalid="setCustomValidity('生日必填')" oninput="setCustomValidity('')">

		    	<label for="email">Email:</label>
		    	<input type="email" name="email" class="form-control" id="email" placeholder="请输入电子邮箱" >
	
		    	<label for="identityCard">IdentityCard:</label>
		    	<input type="text" name="identitycard" class="form-control" id="identityCard" placeholder="请输入身份证号"  oninvalid="setCustomValidity('身份证格式不能正确')" oninput="setCustomValidity('')">
		  	</div>
		  	<div class="form-group">
				<div class="radio">
					<label >Sex:</label>
				  	<label class="radio-inline"><input type="radio" name="sex" checked="checked" value="1">Man</label>
					<label class="radio-inline"><input type="radio" name="sex" value="2">Woman</label>
				</div>
			</div>
		  	<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>