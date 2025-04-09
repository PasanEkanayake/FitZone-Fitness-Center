<?php
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    $sql = "SELECT * FROM blog_posts WHERE title LIKE ? OR content LIKE ? OR category LIKE ?  ";
    $stmt = $conn->prepare($sql);
    $searchTerm = "%" . $query . "%";
    $stmt->bind_param("sss", $searchTerm, $searchTerm, $searchTerm);
    $stmt->execute();

    $result = $stmt->get_result();
?>