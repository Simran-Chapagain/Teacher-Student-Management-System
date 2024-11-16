
<?php 

    include '../../DB_connection.php';
    include "../data/teacher.php";

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $uname = $_POST['username'];
    $address = $_POST['address'];
    $phone_number = $_POST['phone_number'];
    $qualification = $_POST['qualification'];
    $email_address = $_POST['email_address'];
    $gender = $_POST['gender'];
    $date_of_birth = $_POST['date_of_birth'];
    $teacher_id = $_POST['teacher_id'];
    
    


    $data = 'teacher_id='.$teacher_id;
    if (empty($fname)) {
		$em  = "First name is required";
		header("Location: ../teacher-edit1.php?error=$em&$data");
		exit;
	}else if (empty($lname)) {
		$em  = "Last name is required";
		header("Location: ../teacher-edit1.php?error=$em&$data");
		exit;
	}else if (empty($uname)) {
		$em  = "Username is required";
		header("Location: ../teacher-edit1.php?error=$em&$data");
		exit;
	}else if (!unameIsUnique($uname, $conn, $teacher_id)) {
		$em  = "Username is taken! try another";
		header("Location: ../teacher-edit1.php?error=$em&$data");
		exit;

	}else if (empty($address)) {
        $em  = "Address is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    
    }else if (empty($phone_number)) {
        $em  = "Phone number is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    }else if (empty($qualification)) {
        $em  = "Qualification is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    }else if (empty($email_address)) {
        $em  = "Email address is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    }else if (empty($gender)) {
        $em  = "Gender address is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    }else if (empty($date_of_birth)) {
        $em  = "Date of birth address is required";
        header("Location: ../teacher-edit1.php?error=$em&$data");
        exit;
    }else {

        $sql = "UPDATE teachers SET
                 username = ?, fname=?, lname=?, 
                address = ?, date_of_birth = ?, 
             phone_number = ?, qualification = ?,gender=?, email_address = ?
                WHERE teacher_id=?";
        $stmt = $conn->prepare($sql);
        $stmt->execute([$uname, $fname, $lname, $address,
         $date_of_birth, $phone_number, $qualification, $gender, $email_address, $teacher_id]);
        $sm = "successfully updated!";
        header("Location: ../teacher1.php?success=$sm&$data");
        exit;
	}
    