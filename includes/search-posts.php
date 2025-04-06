<?php

    // Get search query from GET request
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    // Prepare SQL statement to fetch search results based on query
    $sql = "SELECT * FROM blog_posts WHERE title LIKE ? OR content LIKE ? OR category LIKE ?  ";
    $stmt = $conn->prepare($sql);
    $searchTerm = "%" . $query . "%"; // Like query
    $stmt->bind_param("sss", $searchTerm, $searchTerm, $searchTerm);
    $stmt->execute();

    // Get the result set
    $result = $stmt->get_result();
?>