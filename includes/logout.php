<?php
    session_start();
    session_unset();
    session_destroy();
    echo "<script>alert('You have been successfully logged out. See you again at FitZone Fitness Center!'); window.location.href = '../index.php';</script>";
    exit();
?>