<!DOCTYPE html>
<html>
<head>
<title>Unit 4 Exercise es592</title>
</head>
<body>
<h1>My Golfing Team</h1>
<h4>Name: Eeva Seppanen</h4>
<h4>UCID: es592</h4>
<h4>Course and Section: IT-202-006 Internet Applications</h4>
<?php
error_log("\$_POST " . print_r($_POST, true));
$db = new mysqli("sql1.njit.edu",'es592','21Kissa!Mau34','es592', 3306);
$golferid = $_POST['golferid'];
$score = $_POST['score'];
$query = "INSERT INTO games (golferid, score) VALUES (?, ?)";
$stmt = $db->prepare($query);
if($stmt == false) { echo "ERROR:" . $db->errno . ' ' . $db->error; }
$stmt->bind_param(
   "ii",
   $golferid,
   $score
);
$result = $stmt->execute();
$db->close();
if ($result) {
   echo "<h2>New game's score successfully added</h2>\n";
} else {
   echo "<h2>Sorry, there was a problem adding that game's score</h2>\n";
}
date_default_timezone_set("America/New_York");
echo "The date and time is " . date("D M j h:i:sa T Y");
?>
</body>
</html>