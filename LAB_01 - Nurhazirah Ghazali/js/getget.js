function loadDoc() {
      var xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          myFunction(this);
        }
      };
      xhttp.open("GET", "food_menu.xml", true);
      xhttp.send();
  }


  function myFunction(xml) {
      var i;
      var xmlDoc = xml.responseXML;

      var table="";
      var x = xmlDoc.getElementsByTagName("food");

      for (i = 0; i <x.length; i++) { 
          table += "<tr><td>" +
                    "<img src ="+ x[i].getElementsByTagName("image")[0].childNodes[0].nodeValue + " width='175' height='100'>"+
                   "</td><td>" +
                    x[i].getElementsByTagName("name")[0].childNodes[0].nodeValue + ", " +
                    x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue + "</br></br>" +
                    x[i].getElementsByTagName("description")[0].childNodes[0].nodeValue + "</br>Colories : " +
                    x[i].getElementsByTagName("calories")[0].childNodes[0].nodeValue +
                   "</td></tr>";
      }
      document.getElementById("foodie").innerHTML = "<h4>Food Menu</h4>" + table;
  }