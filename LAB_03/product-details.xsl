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
                            <div class="panel-group category-products" id="accordian"><!--category-products-->
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
                            </div>  <!-- End category-products -->
                        </div>  <!-- End left-sidebar -->
                    </div>  <!-- End col-sm-3 -->

                    <div class="col-sm-9 padding-right">
                        <div class="product-details"><!--product-details-->
                            <div class="col-sm-5">
                                <div class="view-product">
                                    <img src="images/product/hera-cc-cream-spf35pa-17-pink-beige-30ml.jpg" alt="" />
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">
                                      <!-- Controls -->
                                      <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                      </a>
                                      <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                      </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                    <h2>Anne Klein Sleeveless Colorblock Scuba</h2>
                                    <p>Web ID: 1089772</p>
                                    <img src="images/product-details/rating.png" alt="" />
                                    <span>
                                        <span>US $59</span>
                                        <label>Quantity:</label>
                                        <input type="text" value="3" />
                                        <button type="button" class="btn btn-fefault cart">
                                            <i class="fa fa-shopping-cart"></i>
                                            Add to cart
                                        </button>
                                    </span>
                                    <p><b>Availability:</b> In Stock</p>
                                    <p><b>Condition:</b> New</p>
                                    <p><b>Brand:</b> E-SHOPPER</p>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                </div><!--/product-information-->
                            </div>
                        </div>
                    </div>

                </div>  <!-- End Row -->
            </div> <!-- End Container -->
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
