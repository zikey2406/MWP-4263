$(document).ready(function(){
	Transform();
	// $(".fancybox").function();	
});


function Transform(){
	var xml = getXMLData("car_list.xml");
	var xsl = getXMLData("car_list.xsl");

	//Only for Mozilla
	xsltProcessor = new XSLTProcessor();
	xsltProcessor.importStylesheet(xsl);
	var result = xsltProcessor.transformToFragment(xml, document);

	$("#Car").append(result);
}
function getXMLData(url){
	return $.ajax({
		type: "GET",
		url: url,
		async: false
	}).responseXML;
}

