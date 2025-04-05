<?php
    include '../includes/db-connection.php';

    if (isset($_GET['id'])) {
        $id = $_GET['id'];

        $sql = "DELETE FROM blogs WHERE id = ?";
        $stmt = mysqli_prepare($conn, $sql);
        mysqli_stmt_bind_param($stmt, "i", $id);

        if (mysqli_stmt_execute($stmt)) {
            echo "<script>alert('Post deleted successfully.'); window.location.href='../pages/blog.php';</script>";
        } else {
            echo "Error deleting post.";
        }
    } else {
        echo "Invalid request.";
    }
?>
