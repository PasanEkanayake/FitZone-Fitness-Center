<?php
    include '../includes/db-connection.php'; // Database connection

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = trim($_POST['name']);
        $email = trim($_POST['email']);
        $subject = trim($_POST['subject']);
        $message = trim($_POST['message']);

        if (empty($name) || empty($email) || empty($subject) || empty($message)) {
            echo "<script>alert('All fields are required!'); window.history.back();</script>";
            exit();
        }

        // Insert into database
        $stmt = $conn->prepare("INSERT INTO contact_messages (name, email, subject, message) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("ssss", $name, $email, $subject, $message);

        if ($stmt->execute()) {
            echo "<script>alert('Message sent successfully!'); window.location.href='contact.html';</script>";
        } else {
            echo "<script>alert('Error sending message! Try again.'); window.history.back();</script>";
        }

        $stmt->close();
        $conn->close();
    }
?>

