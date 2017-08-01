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
<link href="<%=path%>/static/my2.css"
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

<script>
$(document).ready(function(e){
	$(".img-check").click(function(){
		$(this).toggleClass("check");
	});
});
</script>


<style>


</style>


<body>
	<!-- navbar -->
	<nav class="navbar navbar-default" role="navigation">
	    <div class="container-fluid"> 
		    <div class="navbar-header">
		        <a class="navbar-brand" href="<%=path%>/page/index.do">PIC PICK</a>
		    </div>
		    <div>
		        <form class="navbar-form navbar-left" role="search" action="<%=path%>/page/search.do?username=${sessionScope.user.u_name}" method="post" >
		            <div class="form-group">
		                <input type="text" class="form-control" placeholder="Search" name="keywords">
		            </div>
		           <button type="submit" class="btn btn-default btn-md">
								<span class="glyphicon glyphicon-search"></span>
					</button>
		        </form>
		        
		    </div>
		    
		    <div>
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> ${sessionScope.user.u_name} <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">个人主页</a></li>
							
							<li class="divider"></li>
							<li><a href="<%=path%>/user/outLogin.do">注销</a></li>
						</ul></li>
				</ul>

			</div>
		
		    
	    </div>
	</nav>
	<!-- navbar end -->
	
	
	<!--contant-->
	<div class="page-wrap">
			
		<section class="profile-header l-container-center">
			<img class="profile-header__img" alt="viki" src="<%=path%>/static/images/other/profile.jpg ">
			<div class="profile-header__content l-row">
				<div class="l-lg-6 l-md-12">
					<h1 class="profile-header__title">${sessionScope.user.u_name}</h1>
					<h2 class="profile-header__subtitle"></h2>
					
				</div>
		
			</div>
			</section>
			</div>
		
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>