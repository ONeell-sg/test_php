<!DOCTYPE html>
<html>
  <head>
    <title>test</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="utf-8" />
  </head>
  <body>
    <div class="header">
          <a >
             <img src={logo} />
          </a>
                    <ul>
                  
                        <a href="/" >Главная</a>
                        <a href="/about" >О нас</a>
                        <a href="/branches" >Наши отделения</a>
                        <a href="/gallery" >Галерея</a>
                        <a href="/events" >Мероприятия</a>
                        <a href="/sponsors" >Комментарии пользователей</a>
                    </ul>

     </div>
    <h2>Комментарии пользователей</h2>
    <?php
      $conn = new mysqli('localhost', 'root', '', 'testphp');
      if($conn->connect_error){
        die("Ошибка: " . $conn->connect_error);
      }
      $sql = "SELECT * FROM comments";
      if($result = $conn->query($sql)){
        foreach($result as $row){
         
            echo  "{$row['name']} <br>  {$row['date']} <br> {$row['comment']}<br><br> ";
         
        }
        $result->free();
      } else{
        echo "Ошибка: " . $conn->error;
      }
      $conn->close();
    ?>

    <button type="submit" onClick="window.location.href='insdb.php'" >Добавить данные</input>
  </body>
</html>