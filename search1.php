
<?php

include "connection.php";



$student_id = trim($_POST['search1']);



$queryResult=$connect->
  query("
  SELECT id, student_id, student_name, gender, address, 
  major, phone, datetime_entry 
  FROM t_students WHERE student_id='".$student_id."'");
  




$result=array();

while($fetchData=$queryResult->fetch_assoc()) {
	$result[]=$fetchData;
}

//Send back data to Flutter
    if($result){
        echo json_encode($result);
    }else{
        echo json_encode('');
    }
?>

