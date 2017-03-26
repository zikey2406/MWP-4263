<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
	  <body>
		<xsl:for-each select="list/car">
		  <div class="w3-container">
			<div class="w3-panel w3-card-4 w3-bottombar panel-s ">
			  <div class="w3-row">

			  	  <div class="w3-col s3 w3-center margin-col">
						<!-- <a class="fancybox">
							<xsl:attribute name="href">
								<xsl:value-of select="img1"/>
							</xsl:attribute>
							<img class="car1">
								<xsl:attribute name="src">
									<xsl:value-of select="img1"/>
								</xsl:attribute>
							</img>
						</a> -->

						<img class="car1">
							<xsl:attribute name="src">
								<xsl:value-of select="img1"/>
							</xsl:attribute>
						</img>
					
					<div class="w3-row">							 
						<div class="w3-third w3-center">
							<img class="car2">
								<xsl:attribute name="src">
									<xsl:value-of select="img2"/>
								</xsl:attribute>
							</img>
						</div>
						<div class="w3-third w3-center">
							<img class="car2">
								<xsl:attribute name="src">
									<xsl:value-of select="img3"/>
								</xsl:attribute>
							</img>
						</div>
						<div class="w3-third w3-center w3-margin-bottom">
							<img class="car2">
								<xsl:attribute name="src">
									<xsl:value-of select="img4"/>
								</xsl:attribute>
							</img>
						</div>
					</div>
					 
				  </div>

				  <div class="w3-col s8 margin-col">
					  <div class="w3-row">	
				  	   <h1> 
					  	 	<xsl:value-of select="year"/> 
					  	 	<xsl:value-of select="make"/>
					  	 	<xsl:value-of select="mode"/>
					  	 	<xsl:value-of select="variant"/>
				  	   </h1>
				      </div>
					  <div class="w3-row">
					  	<h4 style="margin-top:-0px;">
					  		<xsl:value-of select="mileage"/>|
					  	 	<xsl:value-of select="capacity"/>|
					  	 	<xsl:value-of select="transmission"/>|
					  	 	<xsl:value-of select="body"/>|
					  	 	<xsl:value-of select="location"/>
					  	 </h4>
					  </div>
					  <div class="w3-row cnt">
					  	 <h3><xsl:value-of select="price"/></h3>
					  </div>
					  <div class="w3-row">
					  	  <p class="carDesc">
					  		 <xsl:value-of select="description"/>
					  	  </p>
					  </div>
					  <div class="w3-row ownerD">
					  	 <span class=""><i class="fa fa-sitemap pad" aria-hidden="true"/> 
					  	 	<xsl:value-of select="name"/>| <span class="ownerD1"><xsl:value-of select="owner"/></span></span>
					  </div>
				</div>  
					
			  </div>   
			</div> 
		  </div> 
		</xsl:for-each>
	  </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
