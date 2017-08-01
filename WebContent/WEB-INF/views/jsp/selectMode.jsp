<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ 
page contentType="text/html;charset=UTF-8" language="java"%>
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

var arrayPic = new Array();
var url;
$(document).ready(function(e){
	
	//为 class = img-check 的控件绑定 click 事件
	$(".img-check").click(function(){
		
		$(this).toggleClass("check");
		
		
		var val = $("#item4").val(); //获取
		
		arrayPic. push(val);
		
		 url=arrayPic.join(".");
		
		
	});
	
	
	
});





function getUrl(){
	alert(url);
	   window.open(url);
















}
   
    

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
		        
		    </div>
		    
		    <div>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> SELECT <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#"></a></li>
							<li><a href="#">SELECT</a></li>
							<li class="divider"></li>
							<li><a href="#" target=main onclick ="javascript:history.back();">VIEW</a></li>
						</ul>
					</li>
					
					
					

					<li><a href="<%=path%>/page/"  onclick="getUrl();">DOWNLOAD</a></li>
					<li><a href="#">STAR +</a></li>
					
					
					
					
				</ul>

			</div>
		
		    
	    </div>
	</nav>
	<!-- navbar end -->
	
	
	<!-- contant-->
	<div class="page-wrap">
	

			
			
		<!--contant-->
		<div class="l-container">
				
				
				<div class="title title--search-info l-row l-lg-8 l-md-6 l-sm-12 ">
					<h1 class="title__headline">
					${keywords}
					</h1>
				</div>
				
				
				<!-- 图片选择 -->
				<form action="<%=path%>/page//display/download.do" method="get" onsubmit="return formSubmit();" >
					<div class="form-group">
					
					<!--pictures-->
					<div class="photos" data-row-grid="{&quot;minMargin&quot;:5,&quot;maxMargin&quot;:5,&quot;itemSelector&quot;:&quot;.photo-item&quot;,&quot;firstItemClass&quot;:&quot;first-item&quot;,&quot;lastRowClass&quot;:&quot;last-row&quot;,&quot;resize&quot;:true,&quot;minWidth&quot;:426}">
						
								
						<c:forEach items="${searchInfo }" var="info">			
							
						<article class="photo-item first-item" style="width: 320px; height: 320px; margin-right: 5px;">
							<a class="img-check" title="${info.keywords}" name="pic">
								<img class="pic_item" style="background:rgb(19,24,42)" alt="${info.pic_url}"  src="${info.pic_url}" >
							</a>
							<input type="checkbox" name="chk1" id="item4" value="${info.pic_url}" class="hidden" autocomplete="off">
						</article>
					
						</c:forEach>
						
					</div>
					
					
				
					
					<!--pictures end-->
					
					
					
					
					<!--pictures end-->
					</div>
				</form>
				
				
				
			</div>
		<!--content end-->
		
	</div>
	
	
	
	
	
	
	<!-- contant end -->
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>