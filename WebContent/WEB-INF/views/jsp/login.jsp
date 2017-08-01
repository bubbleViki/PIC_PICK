<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


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
function myFunction(){
document.getElementById("submit").addEventListener("click", submit);
    document.getElementById("submit").click();

}

var autosaveOn = false;
function myAutosavedTextbox_onTextChanged()
{
    if (!autosaveOn)
    {
        autosaveOn = true;

        $('#myAutosavedTextbox').everyTime("300000", function(){
             $.ajax({
                 type: "POST",
                 url: "autosavecallbackurl",
                 data: "id=1",
                 success: function(msg) {
                     $('#autosavenotify').text(msg);
                 }
             });
        }); //closing tag
    }
}
		


window.onload=myAutosavedTextbox_onTextChanged();


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

<body  data-spy="scroll" data-target=".input-group">

	<!-- 导航栏 -->
	<div id="s"></div>
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation" >
	<div class="container">	
			
			 <div class="navbar-header">
		        <a class="navbar-brand" href="http://localhost:8080/PIC_PICK/page/index.do">PIC PICK</a>
		    </div>
			
			
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%=path%>/user/signIn.do">注册</a></li>
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
                        			<h3>登录我们，以获取更多功能</h3>
                            		<p>请输入你的用户名和密码:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-lock"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form role="form" action="<%=path%>/user/InfoCheck.do" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="username" placeholder="Username..." class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password">
			                        </div>
			                        <button id="submit" type="submit" class="btn">GO</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
		
		
		
</div>
	</div>


</body>
</html>