<?php 
    $conn = new mysqli('localhost', 'root', '', 'testphp');
    if($conn->connect_error){
      die("Ошибка: " . $conn->connect_error);
    }

    $st = mysqli_prepare($conn, 'INSERT INTO comments( name, date, comment) VALUES ( ?, ?, ?)');

    mysqli_stmt_bind_param($st, 'sss', $name, $date, $comment);


    $jsondata = file_get_contents('test.json'); 
          
    $data = json_decode($jsondata, true); 

    foreach ($data as $row) {
   
        $name = $row['name'];
        $date = $row['date'];
        $comment = $row['comment'];
        
        // execute insert query
        mysqli_stmt_execute($st);
    }
   
?>