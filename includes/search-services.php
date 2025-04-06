<?php

    // Get search query from GET request
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    // Prepare SQL statement to fetch search results based on query
    $sql3 = "SELECT * FROM services WHERE service_type LIKE ? OR description LIKE ?  ";
    $stmt3 = $conn->prepare($sql3);
    $searchTerm = "%" . $query . "%"; // Like query
    $stmt3->bind_param("ss", $searchTerm, $searchTerm);
    $stmt3->execute();

    // Get the result set
    $result3 = $stmt3->get_result();
?>