<?php 


 
     include "../DB_connection.php";
     include "data/student.php";
     $id = $_GET['student_id'];
     if (removeStudent($id, $conn)) {
     	$sm = "Successfully deleted!";
        header("Location: student1.php?success=$sm");
        exit;
     }else {
        $em = "Unknown error occurred";
        header("Location: student1.php?error=$em");
        exit;
     }
 