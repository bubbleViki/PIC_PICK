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
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> MODE <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="http://localhost:8080/PIC_PICK/selectMode.jsp">SELECT</a></li>
							<li class="divider"></li>
							<li><a href="#">VIEW</a></li>
						</ul></li>
						
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
	
	
	<!-- contant-->
	<div class="page-wrap">
			
		<section class="profile-header l-container-center">
			<img class="profile-header__img" alt="viki" src="static/images/other/profile.jpg ">
			<div class="profile-header__content l-row">
				<div class="l-lg-6 l-md-12">
					<h1 class="profile-header__title">viki</h1>
					<h2 class="profile-header__subtitle"></h2>
					<span class="profile-header__subtitle">
						<a href="https://www.pexels.com/edit-profile/">Complete Your Profile</a>
					</span>
				</div>
		
			</div>
			<div class="tabs">
				
				<a class="tabs__tab " href="http://localhost:8080/PIC_PICK/home.jsp">Downloads (0)</a>
				<a class="tabs__tab tabs__tab--active" href="http://localhost:8080/PIC_PICK/stars.jsp">Stars (0)</a>
			
			
			</div>
		</section>
		
	
			
			
			<!--contant-->
		<div class="l-container">
				
				
				<div class="title title--search-info l-row l-lg-8 l-md-6 l-sm-12 ">
					<h1 class="title__headline">
					star Photos
					</h1>
				</div>
				
				
				<!-- 图片选择 -->
				<form method="get">
					<div class="form-group">
					
					<!--pictures-->
					<div class="photos" data-row-grid="{&quot;minMargin&quot;:5,&quot;maxMargin&quot;:5,&quot;itemSelector&quot;:&quot;.photo-item&quot;,&quot;firstItemClass&quot;:&quot;first-item&quot;,&quot;lastRowClass&quot;:&quot;last-row&quot;,&quot;resize&quot;:true,&quot;minWidth&quot;:426}">
						
						<article class="photo-item first-item" style="width: 447px; height: 251px; margin-right: 5px;">
						<a href="#" title="Blue and Black Starry Sky">
						<img width="622" height="350" style="background:rgb(19,24,42)" alt="Blue and Black Starry Sky"  src="static/images/index/index_blackwhite_peo.jpeg" class="img-thumbnail img-check">
						</a>
						<input type="checkbox" name="chk1" id="item4" value="val1" class="hidden" autocomplete="off">
						</article>
						
						<article class="photo-item" style="width: 377px; height: 251px; margin-right: 5px;">
						<a href="#" title="vikiii">
						<img width="525" height="350" style="background:rgb(67,51,41)" alt="Free stock photo of nature, man, person, night"  src="static/images/index/index_blackwhite_peo.jpeg" class="img-thumbnail img-check">
						</a>
						<input type="checkbox" name="chk1" id="item4" value="val1" class="hidden" autocomplete="off">					
						</article>
						
						<article class="photo-item" style="width: 485px; height: 251px;">
						<a href="#" title="">
						<img width="676" height="350" style="background:rgb(56,52,51)" alt="Free stock photo of sky, person, night, silhouette" src="static/images/index/index_blackwhite_peo.jpeg" class="img-thumbnail img-check">
						</a>
						<input type="checkbox" name="chk1" id="item4" value="val1" class="hidden" autocomplete="off">
						</article>
						
						<article class="photo-item first-item" style="width: 434px; height: 276px; margin-right: 5px;">
							<a href="#" title="Shooting Star during Nighttime With Purple Sky">
							<img width="550" height="350" style="background:rgb(71,35,70)" alt="Shooting Star during Nighttime With Purple Sky"  src="static/images/index/index_blackwhite_peo.jpeg" class="img-thumbnail img-check">
							</a>
							<input type="checkbox" name="chk1" id="item4" value="val1" class="hidden" autocomplete="off">
						</article>
						
					</div>
					
					<!--pictures end-->
					</div>
				</form>
				
				
				
			</div>
		<!--content end-->
		

	
	
	
	
	
	<!-- contant end -->
	
	
			
			
			
			
			
		</div>
	</div>
	
				
	<!-- contant end -->
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>