<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<style type="text/css">
			.container {
				padding-top: 200px;
			}
			.col-md-3:hover {
				box-shadow: -2px 2px 2px #aaa, 2px -2px 2px #aaa, 2px 2px 2px #aaa, 2px 2px 2px #aaa;
			}
			.price {
				color: #E4393C;
				margin-left: 12px;
			}
		</style>
		<link rel="stylesheet" type="text/css" href="css/buttons.css"/>
		<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
	</head>

	<body>
		<div class="page-header">
			<nav class="navbar navbar-default">
      			<ul class="nav navbar-nav navbar-right">
      			<c:if test="${seeeionScope.user==nill}">
       				 <li><a href="user_login/login">登录</a></li>
       				 <li><a href="user_regist/regist">注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li>
       			</c:if>
       			<c:if test="${sessionScope.user!=null}">	 
       			<li>欢迎您！${sessionScope.user.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
       			</c:if>
       			
    			</ul>
			</nav>
		</div>
		<div class="container">
			<div class="col-md-3">
				<img class="img-thumbnail center-block" src="http://img11.360buyimg.com/n7/g13/M09/0B/05/rBEhVFIxaGkIAAAAAAGEV0SZGCMAADEsQOGrOkAAYRv640.jpg" />
				<h3 class="price">¥4000</h3>
				<h4 class="small">苹果（Apple）iPhone 6 (A1586) 16GB</h4>
				<h5 class="glyphicon glyphicon-heart-empty">1234</h5>
			</div>

			<div class="col-md-3">
				<img class="img-thumbnail center-block" src="http://img13.360buyimg.com/n7/jfs/t754/213/283441423/476431/456cdc52/549bdc4aN1f861976.jpg" />
				<h3 class="price">¥5000</h3>
				<h4 class="small">(Roogo) 欧式仿真德国牧羊犬招财旺财大狼狗</h4>
				<h5 class="glyphicon glyphicon-heart-empty">3331</h5>
			</div>
		</div>
		<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	</body>

</html>