<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<body>
		<header id="header"><!--header-->	
			<div class="header-middle"><!--header-middle-->
				<div class="container">
					<div class="row">
						<div class="col-sm-4">
							<div class="logo pull-left">
								<a href="index.html"><!-- <img src="images/home/logo.png" alt="" /> -->
									<h2 class="title">Online Shop</h2>
								</a>
							</div>
							<div class="btn-group pull-right">
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">MY
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">US</a></li>
										<li><a href="#">UK</a></li>
									</ul>
								</div>
								
								<div class="btn-group">
									<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">MYR
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">Dollar</a></li>
										<li><a href="#">Pound</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="shop-menu pull-right">
								<ul class="nav navbar-nav">
									<li><a href="#"><i class="fa fa-user"></i> Account</a></li>
									<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
									<li><a href="#"><i class="fa fa-crosshairs"></i> Checkout</a></li>
									<li><a href="#"><i class="fa fa-shopping-cart"></i> Cart</a></li>
									<li><a href="#"><i class="fa fa-lock"></i> Login</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header-middle-->
	
			<div class="header-bottom"><!--header-bottom-->
				<div class="container">
					<div class="row">
						<div class="col-sm-9">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>
							<div class="mainmenu pull-left">
								<ul class="nav navbar-nav collapse navbar-collapse">
									<li><a href="index.html" class="active">Home</a></li>
									<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
	                                    <ul role="menu" class="sub-menu">
	                                        <li><a href="#Products">Products</a></li>
											<li><a href="#Product Details">Product Details</a></li> 
											<li><a href="#Checkout">Checkout</a></li> 
											<li><a href="#Cart">Cart</a></li> 
	                                    </ul>
	                                </li> 				
									<li><a href="#contactUs">Contact</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="search_box pull-right">
								<input type="text" placeholder="Search"/>
							</div>
						</div>
					</div>
				</div>
			</div><!--/header-bottom-->
		</header><!--/header-->


		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="left-sidebar">
							<h2>Category</h2>
							<div class="panel-group category-products" id="accordian"><!--category-productsr-->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
												<span class="badge pull-right"><i class="fa fa-plus"></i></span>
												Brands
											</a>
										</h4>
									</div>
									<div id="sportswear" class="panel-collapse collapse">
										<div class="panel-body">
											<ul>
												<xsl:for-each select="list/details">
													<li><a href="#{brand}"><xsl:value-of select="brand"/></a></li>				
												</xsl:for-each>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title"><a href="#">Latest Trends</a></h4>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title"><a href="#">Just Restock</a></h4>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-9 padding-right">
						<div class="features_items"><!--features_items-->
							<h2 class="title text-center">Features Items</h2>
							<xsl:for-each select="list/details">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="images/product/{picture}" alt=""/> <!-- show product images -->
												<p class="namee">
													<xsl:value-of select="brand"/><br/>
													<xsl:value-of select="name"/>									
												</p>									
												<!-- If there's discount -->
					                            <xsl:if test="discount > '0'">
						                            <h2>
						                                <span class="label label-danger"><xsl:value-of select="discount"/>%</span>
						                                RM <xsl:value-of select="format-number(discounted_price,'#.00')"/>
						                            </h2>
						                            <strike><h5>RM <xsl:value-of select="format-number(price,'#.00')"/></h5></strike>
					                            </xsl:if>

					                            <!-- If no discount -->
					                            <xsl:if test="discount = '0'">
					                                <h2><br/>RM <xsl:value-of select="format-number(price,'#.00')"/></h2>
					                            </xsl:if>

												<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>
											<div class="product-overlay">
												<div class="overlay-content">
													<h2>RM <xsl:value-of select="format-number(price,'#.00')"/></h2>
													<p><xsl:value-of select="name"/></p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Product</a>
												</div>
											</div>

											<xsl:if test="new_arrival = 'yes'">
						                        <img src="images/home/new1.png" class="new" alt="" />
						                    </xsl:if>
						                    <xsl:if test="hot_item = 'yes'">
						                        <img src="images/home/hot.png" class="sale" alt="" />
						                    </xsl:if>
												
										</div>
										<div class="choose">
											<ul class="nav nav-pills nav-justified">
												<li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
												<li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
											</ul>
										</div>
									</div>
								</div>
							</xsl:for-each>
						</div><!--features_items-->
					</div>
				</div>
			</div>
		</section>

		<footer id="footer"><!--Footer-->
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<p class="pull-left">Lab 3 Assignment - Nurhazirah Binti Ghazali</p>
						<p class="pull-right">Github <span><a target="_blank" href="https://github.com/zikey2406">zikey2406</a></span></p>
					</div>
				</div>
			</div>
			
		</footer><!--/Footer-->
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
