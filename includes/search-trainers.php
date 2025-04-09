<?php
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    $sql2 = "SELECT * FROM trainers WHERE name LIKE ? OR specialty LIKE ?  ";
    $stmt2 = $conn->prepare($sql2);
    $searchTerm = "%" . $query . "%";
    $stmt2->bind_param("ss", $searchTerm, $searchTerm);
    $stmt2->execute();

    $result2 = $stmt2->get_result();
?>