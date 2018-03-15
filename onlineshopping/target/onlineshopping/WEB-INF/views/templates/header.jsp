<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<% response.setHeader("cache-control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);%>



<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />
<!DOCTYPE html>
<html lang="en">
<head>
<script src="${js}/angular.min_.4.3.js"></script>
<title>Electronic Store a Ecommerce Online Shopping Category
	Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<style type="text/css">
a:link{
color:white;
}
a:hover{
color:red;
}
</style>
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<!-- Custom Theme files -->

<!-- Angular.JS -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">
<link href="${css}/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${css}/style.css" rel="stylesheet" type="text/css"
	media="all" />
	<link href="${css}/Style1.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${css}/fasthover.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="${css}/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="${css}/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="${js}/jquery.min.js"></script>
<link rel="stylesheet" href="${css}/jquery.countdown.css" />
<!-- countdown -->
<!-- //js -->
<!-- web fonts -->
<link href='//fonts.googleapis.com/css?family=Glegoo:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //web fonts -->
<!-- start-smooth-scrolling -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
</head>
<body>
	<!-- for bootstrap working -->
	<script type="text/javascript" src="${js}/bootstrap-3.1.1.min.js"></script>
	<!-- //for bootstrap working -->
	<!-- header -->
	<div class="header" id="home1">
		<div class="container">
			<div class="w3l_login">
				<img src="${images}/logo.jpg"/>
			</div>
			<div class="w3l_logo">
				<h1>
					<a href="/onlineshopping/">Electronic Store<span>Your
							stores. Your place.</span></a>
				</h1>
			</div>
			
			
		</div>
	</div>
	<!-- //header -->
	

	<!-- navigation -->
	<div id="navbar" class="navbar-inverse navbar-collapse collapse" style="background:#333333;">
		<ul class="nav navbar-nav">
		<li><a href="<c:url value="/" />">HOME</a></li>
			<li><a href="<c:url value="/product/productList/all" />">All Products</a></li>
			<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
			<li><a href="<c:url value="/about" />">About Us</a></li>
			
			<li><a href="<c:url value="/contact" />">Contact Us</a></li>
			<li><a href="<c:url value="/help" />">Help</a></li>
		</c:if>
			<c:if test="${pageContext.request.userPrincipal.name != null}">
				
				

				<c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
				
					<li><a href="<c:url value="/customer/cart" />"><span
							class="glyphicon glyphicon-Shopping-Cart"></span></a></li>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
					<li><a href="<c:url value="/admin/productInventory" /> ">Manage Product</a></li>
				</c:if>
				<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
				<li><a href="<c:url value="/login?logout" />">Logout</a></li>
			</c:if>

			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<li><a href="<c:url value="/login" />"><span
						class="glyphicon glyphicon-user"></span>Login</a></li>
				<li><a href="<c:url value="/register" />" ><span
						class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
			</c:if>
		</ul>
	</div>
	<!-- //navigation -->