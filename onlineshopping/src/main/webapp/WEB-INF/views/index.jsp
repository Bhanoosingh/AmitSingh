<%@include file="/WEB-INF/views/templates/header.jsp"%>
<!-- banner -->
<div class="banner">
	<div class="container">
		<h3>
			Electronic Store, <span>Special Offers</span>
		</h3>
	</div>
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
	<div class="container">
		<div class="col-md-5 wthree_banner_bottom_left">
			<div class="video-img">
				<a class="play-icon popup-with-zoom-anim" href="#small-dialog">
					<span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
				</a>
			</div>
			<!-- pop-up-box -->
			<script src="${js}/jquery.magnific-popup.js" type="text/javascript"></script>
			<!--//pop-up-box -->
			<div id="small-dialog" class="mfp-hide">
				<iframe src="https://www.youtube.com/embed/ZQa6GUVnbNM"></iframe>
			</div>
			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type : 'inline',
						fixedContentPos : false,
						fixedBgPos : true,
						overflowY : 'auto',
						closeBtnInside : true,
						preloader : false,
						midClick : true,
						removalDelay : 300,
						mainClass : 'my-mfp-zoom-in'
					});

				});
			</script>
		</div>
		<div class="col-md-7 wthree_banner_bottom_right">



			<div class="agile_ecommerce_tabs">

				<c:forEach items="${products}" var="product" begin="1" end="6">


					<div class="col-md-4 agile_ecommerce_tab_left">
						<div role="tabpanel" class="tab-pane" id="home"
							aria-labelledby="home-tab">
							<div style="width: 196px; height: 223px; position: relative; margin: 0 auto; overflow: hidden;">

								<img
									src="<c:url value="/resources/images/${product.productId}.png" />"
									class="img-responsive" alt="image" style="width: 100%" />
								<div class="w3_hs_bottom">
									<ul>
										<li><a
											href="<spring:url value="/product/viewProduct/${product.productId}" />"><span
												class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
										</li>
									</ul>

								</div>

							</div>
							<div>${product.productPrice}INR</div>
						</div>
					</div>

				</c:forEach>

			</div>

		</div>



		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-bottom -->
<!-- top-brands -->
<div class="top-brands">
	<div class="container">
		<h3>Top Brands</h3>
		<div class="sliderfig">
			<ul id="flexiselDemo1">
				<li><img src="${images}/tb1.jpg" alt=" " class="img-responsive" />
				</li>
				<li><img src="${images}/tb2.jpg" alt=" " class="img-responsive" />
				</li>
				<li><img src="${images}/tb3.jpg" alt=" " class="img-responsive" />
				</li>
				<li><img src="${images}/tb4.jpg" alt=" " class="img-responsive" />
				</li>
				<li><img src="${images}/tb5.jpg" alt=" " class="img-responsive" />
				</li>
			</ul>
		</div>
		<script type="text/javascript">
			$(window).load(function() {
				$("#flexiselDemo1").flexisel({
					visibleItems : 4,
					animationSpeed : 1000,
					autoPlay : true,
					autoPlaySpeed : 3000,
					pauseOnHover : true,
					enableResponsiveBreakpoints : true,
					responsiveBreakpoints : {
						portrait : {
							changePoint : 480,
							visibleItems : 1
						},
						landscape : {
							changePoint : 640,
							visibleItems : 2
						},
						tablet : {
							changePoint : 768,
							visibleItems : 3
						}
					}
				});

			});
		</script>
		<script type="text/javascript" src="${js}/jquery.flexisel.js"></script>
	</div>
</div>
<!-- //top-brands -->

<%@include file="/WEB-INF/views/templates/footer.jsp"%>
