$(document).ready(function(){
    Transform();
});

function Transform() {
    var xml = getXMLData("./getData.php"); //get xml data from the database from getData.php
    var xsl = getXMLData("./product-details.xsl");   // use cosmetics.xsl file for stylesheet

    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    var result = xsltProcessor.transformToFragment(xml, document);

    $("#product").append(result);    //append result to div class cosmetic in product.html
}
function getXMLData(url) {
    return $.ajax({
        type: "GET",
        url: url,
        async: false
    }).responseXML;
}