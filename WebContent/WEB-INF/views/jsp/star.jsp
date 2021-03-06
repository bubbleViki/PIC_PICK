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

			<script type='text/javascript'>
				function checkAll(obj){
					var chs=document.getElementsByName('chsId');
					for(var i=0;i<chs.length;i++){
						chs[i].checked=obj.checked;
					}
				}
			
				
				function goPage(){
					
						location.href="#";
					
				}
				
				function formSubmit(){
					var bool=false;
					var chs=document.getElementsByName("chs"); //getElementsByName() 方法可返回带有指定名称的对象的集合。
					for(var i=0;i<chs.length;i++){
						if(chs[i].checked){
							bool=true;
							break;
						}
					}
					if(!bool){
						alert("请选择需要删除的数据");
					}
					return bool; //返回false 即提交表单失败
				}
	
				
			</script>


<style>

.pic_item {
  max-width:300px; max-height:300px; 
  scale:expression((this.offsetWidth > this.offsetHeight)?(this.style.width = this.offsetWidth >= 300 ? "300px" : "auto"):(this.style.height = this.offsetHeight >= 300 ? "300px" : "auto"));
  display:inline !important;
	 
}

</style>


<body>
	<!-- navbar -->
	<nav class="navbar navbar-default" role="navigation">
	    <div class="container-fluid"> 
		    <div class="navbar-header">
		        <a class="navbar-brand" href="<%=path%>/page/index.do">PIC PICK</a>
		    </div>
		    <div>
		        <form class="navbar-form navbar-left" role="search" action="<%=path%>/page/search.do" method="post" >
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
					<li><a href="<%=path%>/page/display/download.do?keywords=${keywords}&username=${sessionScope.user.u_name}">下载</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">${sessionScope.user.u_name} <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="http://localhost:8080/PIC_PICK/home.jsp">个人主页</a></li>
							
							<li class="divider"></li>
							<li><a href="<%=path%>/user/outLogin.do">注销</a></li>
						</ul></li>
					
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
					<a>${keywords}</a>
					</h1>
				</div>
				
				
					<!--pictures-->
					<div class="photos" data-row-grid="{&quot;minMargin&quot;:5,&quot;maxMargin&quot;:5,&quot;itemSelector&quot;:&quot;.photo-item&quot;,&quot;firstItemClass&quot;:&quot;first-item&quot;,&quot;lastRowClass&quot;:&quot;last-row&quot;,&quot;resize&quot;:true,&quot;minWidth&quot;:426}">
								
								
								
						<c:forEach items="${searchInfo }" var="info">			
								
						<article class="photo-item first-item" style="width: 320px; height: 320px; margin-right: 5px;">
						<input type="checkbox" name="chsId" value="${info.pic_url}" />
							<a href="${info.pic_url}" title="${info.keywords}">
								<img class="pic_item" style="background:rgb(19,24,42)" alt="${info.pic_url}"  src="${info.pic_url}" >
							</a>
						</article>
					
						</c:forEach>
					</div>
					
					<!--pictures end-->
					
				
				
				
			</div>
		<!--content end-->
		
	</div>
	
	
	
	
	
	
	<!-- contant end -->
	
	
	
	
	
	
	
	
	
	
	
	

</body>
</html>