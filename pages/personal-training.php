<?php
    include '../includes/db-connection.php'; // Database connection

    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $contact = trim($_POST['contact']);
    $package = trim($_POST['package']);


    $sql = "INSERT INTO training_registrations (name, email, contact_no, package)
            VALUES ('$name', '$email', '$contact', '$package')";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('You have successfully reserved your training sessions.!'); window.location.href='personal-training.html';</script>";
    } else {
        echo "Error: " . $conn->error;
    }

    $conn->close();
?>
