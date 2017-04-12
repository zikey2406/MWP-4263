<?php
header("Content-type:text/xml");
header("Access-Control-Allow_origin: *");

$host = "localhost";
$username="root";
$password="";
$db = "cosmetics_list";   //Database Name

$con= mysqli_connect($host, $username, $password, $db);    //try to connect to cosmetics_list database in phpmyadmin 
$query = mysqli_query($con, "SELECT * FROM details");      //query to select all data in cosmetics_list database on details table
$cosmetic = new SimpleXMLElement('<list/>');

while($row = mysqli_fetch_array($query)){    // fetching query and insert into row of variable
    $details = $cosmetic->addChild("details");
    $details->addChild("id", $row["id"]);
    $details->addChild("name", $row["name"]);
    $details->addChild("brand", $row["brand"]);
    $details->addChild("picture", $row["picture"]);
    $details->addChild("price", $row["price"]);
    $details->addChild("discount", $row["discount"]);
    $details->addChild("discounted_price", $row["discounted_price"]);
    $details->addChild("new_arrival", $row["new_arrival"]);
    $details->addChild("hot_item", $row["hot_item"]); 
}

mysqli_close($con);
echo $cosmetic->asXML();   //echo into xml form

?>