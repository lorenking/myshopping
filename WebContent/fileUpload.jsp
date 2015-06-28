<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>

<link rel="stylesheet" href="css/buttons.css" />
<link rel="stylesheet" type="text/css"
	href="${path}/css/bootstrap.min.css" />
</head>
<body>
	<form action="${path}/file/upload" method="post"
		enctype="multipart/form-data">
		<!--//上传图片必须这么写 ，post方式 enctype="multipart/form-data"-->
		<input type="button" class="button-3d button-action" value="dianjiaw " />
		<input type="file" name="image" /> <input type="submit" value="提交" />
		
	</form>

	<script type="text/javascript" src="js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
