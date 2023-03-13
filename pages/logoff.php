<?php
    @session_start();
        $SESSION['login'] = false;
        session_destroy();
        unset($_SESSION['login']);
        session_destroy();
        header("location:index.php");
?>