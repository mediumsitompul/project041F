<?php
include "connection.php";

        $result2 = mysqli_query($connect,
        "
        DELETE from t_students where student_id='$_POST[student_id]'
        ");
        echo json_encode('success');

?>

