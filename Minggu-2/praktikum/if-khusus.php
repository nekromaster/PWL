<!DOCTYPE html>
<html>
<head>
<title>if-khusus</title>
</head>
<body>
<?php
$tahun = date ("2022");
$kabisat = ($tahun%4 == 0) ? "KABISAT" : "BUKAN KABISAT";
echo "Tahun <b>$tahun</b> $kabisat";
?>
</body>
</html>
