<?php 
session_start();

     include "../DB_connection.php";
     include "data/teacher.php";
 
     if (removeTeacher($id, $conn)) {
     	$sm = "Successfully deleted!";
        header("Location: teacher1.php?success=$sm");
        exit;
     }else {
        $em = "Unknown error occurred";
        header("Location: teacher1.php?error=$em");
        exit;
     }
 
?>