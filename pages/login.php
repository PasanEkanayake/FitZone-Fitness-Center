<?php
    session_start();

    include '../includes/db-connection.php';

    // Get Username and Password from Login Form
    $userName = trim($_POST['username']);
    $passWord = $_POST['password'];

    $query = "SELECT * FROM members WHERE username=? AND password=?";
    $statement = $conn->prepare($query);
    $statement->bind_param("ss", $userName, $passWord);
    $statement->execute();

    $result=$statement->get_result();

    // Check if the user is a registered memeber
    if($result->num_rows == 1){
        $user = $result->fetch_assoc();
        $_SESSION['user_id'] = $user['member_id'];
        $_SESSION['username'] = $user['username'];
        header("Location: ../index.php");
        exit();
    }else{
        echo "<script>alert('Username or Password is incorrect! Try again.'); window.history.back();</script>";
    }

    $statement->close();
    $conn->close();
?>
