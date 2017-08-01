<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>picpick</title>



<!-- Bootstrap -->
<link href="<%=path%>/static/bootstrap-3.3.5-dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%=path%>/static/bootstrap-3.3.5-dist/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=path%>/static/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>




<style>
.main {
	position: absolute;
	width: 96%;
	left: 2%;
	right: 2%;
	top: 9%;
	left: 2%
}


.main-panel {
	background-image: url(<%=path%>/static/images/index/bg_star.jpg);
	position: absolute;
	width: 100%;
	height: 670px;
}


ul {
	list-style-type: none
}


.main-content .pic_pick {
	position: absolute;
	left: 38%;
	top: 27%;
	color: #FFFFFF;
	padding: 30px;
	font-size: 40px;
	font-family: Helvetica, 'Hiragino Sans GB', 'Microsoft Yahei', '微软雅黑',
		Arial, sans-serif;
}

.main-search {
	position: absolute;
	left: 25%;
	right: 25%;
	top: 300px;
}

.main-content .keywords {
	position: absolute;
	left: 26%;
	top: 390px;
	padding-left: 7px;
	font-family: '微软雅黑';
}

.keywords ul {
	list-style-type: none;
	margin: 0;
	padding: 15px;
	overflow: hidden;
}

.keywords li {
	float: left;
}

.keywords .hot {
	display: block;
	font-weight: bold;
	color: #FFFFFF;
	text-align: center;
	padding: 4px;
	text-decoration: none;
	text-transform: uppercase;
}

.keywords a:link, a:visited {
	display: block;
	font-weight: bold;
	color: #FFFFFF;
	text-align: center;
	padding: 4px;
	text-decoration: none;
	text-transform: uppercase;
}

.keypic {
	position: absolute;
	top: 690px;
	left: 0.5%;
	right: 0.5%;
}

.left-menu {
	background-image: url(<%=path%>/static/images/index.jpg);
}



</style>

</head>

<body data-spy="scroll" data-target=".input-group">

	<!-- 导航栏 -->
	
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" >
	<div class="container">	
			
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> 设置 <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="http://localhost:8080/PIC_PICK/display.jsp">Website</a></li>
							<li class="divider"></li>
						
							<li><a href="#">Date</a>
					
							
							</li>
							
							
							
							
							
							
							
							<li class="divider"></li>
							<li><a href="#">MaxNum</a></li>
						</ul></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> ${sessionScope.user.u_name} <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="<%=path%>/page/home.do">个人主页</a></li>
							
							<li class="divider"></li>
							<li><a href="<%=path%>/user/outLogin.do">注销</a></li>
						</ul></li>
					
					
				</ul>

			</div>
			
	</div>	
	</nav>
	
	<!-- 导航栏 end -->


	<div class="main-panel">

		<div class="main-content">
			<div class="pic_pick">PIC PICK</div>

			<div class="main-search">
			
			<form action="<%=path%>/page/search.do?username= ${user.u_name}" method="post" >
				<div class="input-group">
					<input type="text" class="form-control" name="keywords"> <span
						class="input-group-btn">

						<button type="submit" class="btn btn-default btn-md">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
				</form>

			</div>

			<div class="keywords">
				<ul>
					<li><div class="hot">hot：</div></li>
					<li><a href="#">NU'EST</a></li>
					<li><a href="#">PRODUCE 101</a></li>
					<li><a href="#">NEVER</a></li>
					<li><a href="#">SS2</a></li>
					<li><a href="#">KNOCK</a></li>
				</ul>
			</div>
		</div>



</div>


</body>
</html>