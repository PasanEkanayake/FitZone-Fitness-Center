<?php

    // Get search query from GET request
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    // Prepare SQL statement to fetch search results based on query
    $sql2 = "SELECT * FROM trainers WHERE name LIKE ? OR specialty LIKE ?  ";
    $stmt2 = $conn->prepare($sql2);
    $searchTerm = "%" . $query . "%"; // Like query
    $stmt2->bind_param("ss", $searchTerm, $searchTerm);
    $stmt2->execute();

    // Get the result set
    $result2 = $stmt2->get_result();
?>