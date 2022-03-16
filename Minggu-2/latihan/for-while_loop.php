<!DOCTYPE html>
<html>
<head>
<title>For-While (loop)</title>
</head>
<body>
<?php
    echo "For Loop: <br /> <br />";
    
    for($i=1;$i<=5;$i++)
    {
        echo str_repeat($i, $i);
        echo "<br />";}
    
    echo "<br>";
    echo "While Loop :<br>";
    $i = 1;
    while ($i<= 5) {
        echo str_repeat($i, $i);
        $i++;
        echo "<br />";
    }
?>
</body>
</html>
