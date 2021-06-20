

<?php
error_reporting(0);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "smart_methods";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}


$sql = "SELECT * FROM robot_arm ORDER by id DESC LIMIT 1;
";


$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {

 echo "Base: ".$row["base"]."° ";
        echo "<br>";
    echo "Shoulder: ".$row["shoulder"]."° ";
        echo "<br>";
    echo "Elbow: ".$row["elbow"]."° ";
        echo "<br>";
    echo "Wrist: ".$row["wrist"]."° ";
        echo "<br>";
    echo "Gripper: ".$row["gripper"]."° ";
        echo "<br>";


  }
} else {
  echo "0 results";
}
$conn->close();


?>