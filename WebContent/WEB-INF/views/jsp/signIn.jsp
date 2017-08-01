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

<link href="<%=path%>/static/assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=path%>/static/assets/css/form-elements.css"
	rel="stylesheet">
<link href="<%=path%>/static/assets/css/style.css"
	rel="stylesheet">
<link href="<%=path%>/static/font-awesome/css/font-awesome.min.css"
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




<script type="text/javascript">
    $(function () {
        $('#datetimepicker6').datetimepicker();
        $('#datetimepicker7').datetimepicker({
            useCurrent: false //Important! See issue #1075
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>

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

.form {
	position: absolute;
	left: 10%;
	right: 10%;
	top: 100px;
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
			
			 <div class="navbar-header">
		        <a class="navbar-brand" href="http://localhost:8080/PIC_PICK/index.jsp">PIC PICK</a>
		    </div>
			
			
			<div>
				<ul class="nav navbar-nav navbar-right">
					
					
					<li><a href="<%=path%>/user/login.do">登录</a></li>
					
					
				</ul>

			</div>
			
	</div>	
	</nav>
	
	<!-- 导航栏 end -->


	<div class="main-panel">
		<div class="form">
		<div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>加入我们</h3>
                            		<p>请输入你的信息:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=path%>/user/signIn/submit.do" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        
			                        <!--<div class="form-group">
			                        	<label class="sr-only" for="form-password">WeiboID</label>
			                        	<input type="text" name="text" placeholder="WeiboID..." class="form-password form-control" id="form-password">
			                        </div>
			                        
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">E-MAIL</label>
			                        	<input type="email" name="email" placeholder="E-MAIL..." class="form-password form-control" id="form-password">
			                        </div>-->
			                        
			                        <button type="submit" class="btn">注册</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
		
		
		
</div>
	</div>


</body>
</html>