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
<link href="<%=path%>/static/my.css"
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
.check
{
    opacity:0.5;
	color:#996;
	
}

</style>


<body>
	<!-- navbar -->
	<nav class="navbar navbar-default" role="navigation">
	    <div class="container-fluid"> 
		    <div class="navbar-header">
		        <a class="navbar-brand" href="http://localhost:8080/PIC_PICK/index.jsp">PIC PICK</a>
		    </div>
		    <div>
		        <form class="navbar-form navbar-left" role="search">
		            <div class="form-group">
		                <input type="text" class="form-control" placeholder="Search">
		            </div>
		           <button type="button" class="btn btn-default btn-md">
								<span class="glyphicon glyphicon-search"></span>
					</button>
		        </form>
		    </div>
		    
		    <div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="http://localhost:8080/PIC_PICK/display.jsp">RETURN</a></li>
					<li><a href="#">DOWNLOAD</a></li>
					<li><a href="#">STAR +</a></li>
					
					
					
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> LOGIN <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="http://localhost:8080/PIC_PICK/home.jsp">Profile</a></li>
							<li><a href="http://localhost:8080/PIC_PICK/stars.jsp">Stars</a></li>
							<li class="divider"></li>
							<li><a href="#">setting</a></li>
							<li class="divider"></li>
							<li><a href="#">Exit</a></li>
						</ul></li>
				</ul>

			</div>
		
		    
	    </div>
	</nav>
	<!-- navbar end -->
	
	
	
	
	<iframe id="weibo" style="width:100%; height:600px;"   frameborder="0" scrolling="no" src="http://weibo.com/6261782981/F6febxBrV?ref=friend_circle&rid=1_0_2_2666935014584522767"></iframe>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>