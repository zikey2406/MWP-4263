$(document).ready(function(){
		// $("#foodie").append("<tr>");
		$.ajax({
			type: "GET",
			url: "food_menu.xml",
			dataType: "xml",
			success: function(xml){
				$(xml).find('food').each(function(){
					var Titles = $(this).find('name').text();
					var Prices = $(this).find('price').text();
					var Desc = $(this).find('description').text();
					var Cal = $(this).find('calories').text();
					var Pic = $(this).find('image').text();

					var output = "<tr><td><img src ='" + Pic +"' width='175' height='100'></td><td>"+ Titles + ", " + Prices + "</br></br>" + Desc + "</br>Calories: " + Cal + "</td></tr>"

					$("#foodie").append(output);
					
				});
			},
			error: function(){
				alert("The XML File could not be processed correctly.");
			}
		});
	});