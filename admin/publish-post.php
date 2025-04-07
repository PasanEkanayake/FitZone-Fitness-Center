<?php
    include '../includes/db-connection.php';

    $title = $_POST['title'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $author = $_POST['author'];
    $image = $_FILES['image']['name'];
    $image_tmp = $_FILES['image']['tmp_name'];

    move_uploaded_file($image_tmp, "../uploads/$image");

    $stmt = $conn->prepare("INSERT INTO blog_posts (title, content, category, author, image) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $title, $content, $category, $author, $image);
    $stmt->execute();

    header("Location: admin-dash.php");