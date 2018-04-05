<!-- Source https://www.tutorialspoint.com/ajax/ajax_database.htm -->

<html>
   <body>
      <script language = "javascript" type = "text/javascript">
         <!-- 
         //Browser Support Code
         function ajaxFunction() {
            var ajaxRequest;  // The variable that makes Ajax possible!
            
            try {        
               // Opera 8.0+, Firefox, Safari
               ajaxRequest = new XMLHttpRequest();
            } catch (e) {
               
               // Internet Explorer Browsers
               try {
                  ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
               } catch (e) {
                  
                  try {
                     ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                  } catch (e) {
                     // Something went wrong
                     alert("Your browser broke!");
                     return false;
                  }
               }
            }
            
            // Create a function that will receive data
            // sent from the server and will update
            // div section in the same page.
            ajaxRequest.onreadystatechange = function() {
            
               if(ajaxRequest.readyState == 4) {
                  var ajaxDisplay = document.getElementById('ajaxDiv');
                  ajaxDisplay.innerHTML = ajaxRequest.responseText;
               }
            }
            
            // Now get the value from user and pass it to
            // server script.
            var age = document.getElementById('age').value;
            var wpm = document.getElementById('wpm').value;
            var sex = document.getElementById('sex').value;
            var queryString = "?age = " + age ;
            
            queryString +=  "&wpm = " + wpm + "&sex = " + sex;
            ajaxRequest.open("GET", "ajax-example.php" + queryString, true);
            ajaxRequest.send(null); 
         }
         //-->
      </script>

      <form name = 'myForm'>
         Max Age: <input type = 'text' id = 'age' /> <br />
         Max WPM: <input type = 'text' id = 'wpm' /> <br />
         Sex: 
         
         <select id = 'sex'>
            <option value = "m">m</option>
            <option value = "f">f</option>
         </select>
         
         <input type = 'button' onclick = 'ajaxFunction()' value = 'Query MySQL'/>
      </form>
      
      <div id = 'ajaxDiv'>Your result will display here</div>
   </body>
</html>

<?php
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "saptest";
	
//Connect to MySQL Server
mysql_connect($dbhost, $dbuser, $dbpass);
	
//Select Database
mysql_select_db($dbname) or die(mysql_error());
	
// Retrieve data from Query String
$age = $_GET['age'];
$sex = $_GET['sex'];
$wpm = $_GET['wpm'];
	
// Escape User Input to help prevent SQL Injection
$age = mysql_real_escape_string($age);
$sex = mysql_real_escape_string($sex);
$wpm = mysql_real_escape_string($wpm);
	
//build query
$query = "SELECT * FROM ajax_example WHERE sex = '$sex'";

if(is_numeric($age))
   $query .= " AND age <= $age";

if(is_numeric($wpm))
   $query .= " AND wpm <= $wpm";
	
//Execute query
$qry_result = mysql_query($query) or die(mysql_error());

//Build Result String
$display_string = "<table>";
$display_string .= "<tr>";
$display_string .= "<th>Name</th>";
$display_string .= "<th>Age</th>";
$display_string .= "<th>Sex</th>";
$display_string .= "<th>WPM</th>";
$display_string .= "</tr>";

// Insert a new row in the table for each person returned
while($row = mysql_fetch_array($qry_result)) {
   $display_string .= "<tr>";
   $display_string .= "<td>$row[name]</td>";
   $display_string .= "<td>$row[age]</td>";
   $display_string .= "<td>$row[sex]</td>";
   $display_string .= "<td>$row[wpm]</td>";
   $display_string .= "</tr>";
}

echo "Query: " . $query . "<br />";
$display_string .= "</table>";

echo $display_string;
?>