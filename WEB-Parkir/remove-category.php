<?php


session_start();
error_reporting(0);


if(isset($_GET['editid'])){
$id=$_GET['editid'];

include('includes/dbconn.php');


$qry="DELETE from vcategory where id=$id";
$result=mysqli_query($con,$qry);

if($result){
    echo"TERHAPUS";
    header('Location:vehicle-category.php');
}else{
    echo"ERROR!!";
}
}
?>