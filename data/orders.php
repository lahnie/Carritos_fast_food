<?php

include "connection.php";

$sql = "Select * FROM orders";
$result = $conexion->query($sql);

$rows = array();
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
    //   echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
        $rows[] = $row;
    }
  } else {
    echo "0 results";
  }

  header('Content-Type: application/json; charset=utf-8');
  echo json_encode($rows);