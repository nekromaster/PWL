<!DOCTYPE html>
<html>
<head>
<title>Faktorial</title>
</head>
<body>
Faktorial For :<br>
    <?php
    $num = 8;  
    $faktorial = 1;  
    for ($x=$num; $x>=1; $x--)   
    {  
      $faktorial = $faktorial * $x;  
    }  
    echo "Faktorial dari $num is $faktorial";
    echo "<br><br>";
echo "while faktorial:<br>"
    
    ?>
    <?php  
    $a = 2;
    $faktorial = $a;
    $num=3;
    while($a <= $num){
      $faktorial = $faktorial * $a;
      $a++;
    }
    echo "\t Faktorial : ";
    echo $num;
    echo "\n";
    echo "\tHasil Perhitungan Faktorial adalah : ";
    echo $faktorial;
    echo "<br>";
    echo "<br>do-while faktorial:<br>";
    ?>
    <?php
    function faktorial($num){
    if($num<=1){
    $hasil=1;
    return $hasil;
    }elseif($num>1){
    $i=1;
    do{
    $hasil=$num * faktorial($num-1);
    $i=$i+1;
    }while($i<=5);
    return $hasil;
            }
}
   echo "Faktorial dari "." ".$num." "."adalah :"." ".faktorial($num);
?>
</body>
</html>
<?php
