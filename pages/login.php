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

    // Get Username and Password from Login Form
    $userName = trim($_POST['username']);
    $passWord = $_POST['password'];

    $query = "SELECT * FROM members WHERE username=? AND password=?";
    $statement = $conn->prepare($query);
    $statement->bind_param("ss", $userName, $passWord);
    $statement->execute();

    $result=$statement->get_result();

    // Check if the user is a registered memeber
    if($result->num_rows == 1){
        echo "<script>alert('You have successfully logged in.'); window.location.href='../index.php';</script>";
    }else{
        echo "<script>alert('Username or Password is incorrect! Try again.'); window.history.back();</script>";
    }

    $statement->close();
    $conn->close();
?>
