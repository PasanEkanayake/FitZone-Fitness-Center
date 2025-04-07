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

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        // Getting the data from the Register Form
        $first_name = trim($_POST['first-name']);
        $last_name = trim($_POST['last-name']);
        $email = trim($_POST['email']);
        $weight = !empty($_POST['weight']) ? floatval($_POST['weight']) : NULL;
        $height = !empty($_POST['height']) ? floatval($_POST['height']) : NULL;
        $username = trim($_POST['username']);
        $password = $_POST['password'];
        $confirm_password = $_POST['confirm-password'];
    
        // Checking if the passwords match
        if ($password !== $confirm_password) {
            echo "<script>alert('Passwords do not match!'); window.history.back();</script>";
            exit();
        }
    
        // Check if the username already exists in the database
        $checkUser = $conn->prepare("SELECT member_id FROM members WHERE username = ?");
        $checkUser->bind_param("s", $username);
        $checkUser->execute();
        $checkUser->store_result();
    
        if ($checkUser->num_rows > 0) {
            echo "<script>alert('Username already exists!'); window.history.back();</script>";
            exit();
        }

        // Check if password already exists in the database
        $checkPassword = $conn->prepare("SELECT password FROM members WHERE password = ?");
        $checkPassword->bind_param("s", $password);
        $checkPassword->execute();
        $checkPassword->store_result();

        if ($checkPassword->num_rows > 0) {
            echo "<script>alert('Entered Password is invalid.! Choose a different one.'); window.history.back();</script>";
            exit();
        }
        $checkPassword->close();
    
        // Insert data in the database
        $stmt = $conn->prepare("INSERT INTO members (first_name, last_name, email, weight, height, username, password) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssddss", $first_name, $last_name, $email, $weight, $height, $username, $password);
    
        if ($stmt->execute()) {
            echo "<script>alert('Registration Successful! Welcome to FitZone Fitness Center...'); window.location.href='../index.php';</script>";
        } else {
            echo "Error: " . $stmt->error;
        }
    
        $stmt->close();
        $conn->close();
    }
?>
