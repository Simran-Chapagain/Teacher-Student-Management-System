
<?php 

    
    include '../../DB_connection.php';
    include "../data/teacher.php";

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $uname = $_POST['username'];
    $pass = $_POST['pass'];
    $address = $_POST['address'];
    $phone_number = $_POST['phone_number'];
    $qualification = $_POST['qualification'];
    $email_address = $_POST['email_address'];
    $gender = $_POST['gender'];
    $date_of_birth = $_POST['date_of_birth'];
    
  
    
    $data = 'uname='.$uname.'&fname='.$fname.'&lname='.$lname.'&address='.$address.'&pn='.$phone_number.'&qf='.$qualification.'&email='.$email_address;
   
    if (empty($fname)) {
		$em  = "First name is required";
		header("Location: ../teacher-add1.php?error=$em&$data");
		exit;
	}else if (empty($lname)) {
		$em  = "Last name is required";
		header("Location: ../teacher-add1.php?error=$em&$data");
		exit;
	}else if (empty($uname)) {
		$em  = "Username is required";
		header("Location: ../teacher-add1.php?error=$em&$data");
		exit;
	}else if (!unameIsUnique($uname, $conn)) {
		$em  = "Username is taken! try another";
		header("Location: ../teacher-add1.php?error=$em&$data");
		exit;
	}else if (empty($pass)) {
		$em  = "Password is required";
		header("Location: ../teacher-add1.php?error=$em&$data");
		exit;
	
    }else if (empty($address)) {
        $em  = "Address is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;

    }else if (empty($phone_number)) {
        $em  = "Phone number is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else if (empty($qualification)) {
        $em  = "Qualification is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else if (empty($email_address)) {
        $em  = "Email address is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else if (empty($gender)) {
        $em  = "Gender address is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else if (empty($date_of_birth)) {
        $em  = "Date of birth address is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else if (empty($pass)) {
        $em  = "Password is required";
        header("Location: ../teacher-add1.php?error=$em&$data");
        exit;
    }else {

        // hashing the password
        $pass = password_hash($pass, PASSWORD_DEFAULT);
        $sql  = "INSERT INTO
          teachers(username, password,  fname, lname,  address,  date_of_birth, phone_number, qualification, gender, email_address)
                 VALUES(?,?,?,?,?,?,?,?,?,?)";         
        $stmt = $conn->prepare($sql);
        $stmt->execute([$uname, $pass, $fname, $lname, $address, $date_of_birth, 
        $phone_number, $qualification, $gender, $email_address]);
        $sm = "New teacher registered successfully";
        header("Location: ../teacher-add1.php?success=$sm");
        exit;
	}
  