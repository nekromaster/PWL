<!DOCTYPE html>
<html>
<head>
<title>break</title>
</head>
<body>
<?php
for ($i=1; $i<10000; $i++) {
if ($i == 5)
continue;
if ($i == 10000)
break;
echo "$i ";
}
?>
</body>
</html>
