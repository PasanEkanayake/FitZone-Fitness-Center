<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "fitzone-fitness-center";

    // Connection to the Database
    $conn = new mysqli($servername, $username, $password, $database);

    // Checking the database connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>