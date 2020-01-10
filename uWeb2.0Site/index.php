<?php
         
$host = "localhost";  
$user = "root";
$password = "";
$database = "ecomdb";

$id = "";
$subject = "";
$content = "";
$date    = "";


mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try{
    $connect = mysql_connect($host, $user, $password, $database);
  } catch (Exception $ex) {
      echo 'Error';
  }

  function getPosts()
  {
      $posts = array();
      $posts[0] = $_POST['id'];
      $posts[1] = $_POST['subject'];
      $posts[2] = $_POST['content'];
      $posts[3] = $_POST['date'];
      return $posts;
  }

  // Search

   if(isset($_POST['search']))
   { 
      $data = getPosts();

      $search_Query = "SELECT * FROM ecommerce WHERE id = $data[0]";

      $search_Result = mysqli_query($connect, $search_Query);

      if($search_Result)
      {
        if(mysqli_num_rows($search_Result))
        {  
              while($row = mysqli_fetch_array($search_Result))
              {
                  $id = $row['id'];
                  $subject = $row['subject'];
                  $content = $row['content'];
                  $date = $row['date'];
              }
        }else{
              echo 'No Data For This id';
       }
    }else{
        echo 'Result Error';
    }
}
 
if(isset($_POST['insert']))
{
    $data = getPosts();
    $insert_Query = "INSERT INTO `ecommerce`(`subject`, `content`, `date`) VALUES
     ('$data'[1], '$data[2]', $data[3])";
     try{
        $insert_Result = mysqli_query($connect, $insert_$Query);

        if($insert_Result)
        {
            if(mysqli_affected_rows($connect) > 0)
            {
                echo 'Data inserted';
            }else{
                echo 'Data Not inserted';
            }
        }
     } catch (Exception $ex) {
         echo 'Error-Insert'.$ex->getMessage();
     }
}

if(isset($_POST['delete']))
{
    $data = getPosts();
    $delete_Query = "DELETE FROM `ecommerce` WHERE `id`= $data[0]";
    try{
        $delete_Result = mysqli_query($connect, $delete_$Query);

        if($insert_Result)
        {
            if(mysqli_affected_rows($connect) > 0)
            {
                echo 'Data Deleted';
            }else{
                echo 'Data Not Deleted';
            }
        }
     } catch (Exception $ex) {
         echo 'Error Delete'.$ex->getMessage();
     }

}


if(isset($_POST['update']))
{
    $data = getPosts();
    $update_Query = "UPDATE `ecommerce` SET `subject`='$data[1]', `content`='$data[2]',
    `data`=$data[3] WHERE `id` = $data[0]";
    try{
        $update_Result = mysqli_query($connect, $update_$Query);

        if($update_Result)
        {
            if(mysqli_affected_rows($connect) > 0)
            {
                echo 'Data Updated';
            }else{
                echo 'Data Not Updated';
            }
        }
     } catch (Exception $ex) {
         echo 'Error Update'.$ex->getMessage();
     }

}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PHP INSERT UPDATE DELETE SEARCH</title>
</head>
<body>

<form action="index.php" method="POST">
     <input type="number" name="id" placeholder="Id" value="<?php echo $id;?>"><br><br>
     <input type="text" name="subject" placeholder="Subject" value="<?php echo $subject;?>"><br><br>
     <input type="text" name="content" placeholder="Content"value="<?php echo $content;?>"><br><br>
     <input type="text" name="date" placeholder="Date" value="<?php echo $date;?>"><br><br>
     <div>
         <input type="submit" name="insert" value="Add">
         <input type="submit" name="update" value="Update">
         <input type="submit" name="delete" value="Delete">
         <input type="submit" name="search" value="Find">
     </div>
</form> 
</body>
</html> 