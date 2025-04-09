<?php
    $query = isset($_GET['query']) ? $_GET['query'] : '';

    $sql3 = "SELECT * FROM services WHERE service_type LIKE ? OR description LIKE ?  ";
    $stmt3 = $conn->prepare($sql3);
    $searchTerm = "%" . $query . "%";
    $stmt3->bind_param("ss", $searchTerm, $searchTerm);
    $stmt3->execute();

    $result3 = $stmt3->get_result();
?>