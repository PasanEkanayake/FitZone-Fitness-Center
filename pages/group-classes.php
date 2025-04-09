<?php
    include '../includes/db-connection.php';

    $name = trim($_POST['name']);
    $email = trim($_POST['email']);
    $class_type = trim($_POST['class_type']);
    $contact = trim($_POST['contact']);
    $date = $_POST['date'];

    $sql = "INSERT INTO group_class_bookings (name, email, contact_no, class_type, class_date) 
            VALUES ('$name', '$email', '$contact', '$class_type', '$date')";

    if ($conn->query($sql) === TRUE) {
    echo "<script>alert('You have successfully booked your group workout session.!'); window.history.back();</script>";
    } else {
    echo "Error: " . $conn->error;
    }

    $conn->close();
?>
