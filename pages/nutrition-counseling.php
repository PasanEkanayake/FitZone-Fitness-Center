<?php
    include '../includes/db-connection.php'; // Database connection

    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $phone = trim($_POST['contact']);
    $goals = trim($_POST['description']);

    $sql = "INSERT INTO nutrition_counseling (name, email, contact_no, description) 
            VALUES ('$name', '$email', '$phone', '$goals')";

    if ($conn->query($sql) === TRUE) {
    echo "<script>alert('Your request has been sent successfully. One of our counsellors will contact you soon.'); window.location.href='nutrition-counseling.html';</script>";
    } else {
    echo "Error: " . $conn->error;
    }

    $conn->close();
?>
