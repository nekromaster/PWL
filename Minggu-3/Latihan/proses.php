<!DOCTYPE html>
<html>
<head>
<title>OKESIP!</title>
</head>
<body>
    <?php
    print_r($_POST)
    ?> <p>Regristrasi Sukses Terima Kasih!!</p>
    <table>
    <tr>
        <td width="200">Nama</td>
        <td>: <?php echo $_POST["fNama"]?></td>
    </tr>
     <tr>
        <td>Prodi</td>
        <td>: <?php echo $_POST["fProdi"]?></td>
    </tr>
     <tr>
        <td>Nilai Tugas</td>
        <td>: <?php echo $_POST["fNilaiTugas"]?></td>
    </tr>
    
    </table>
<a href="form.php">Back</a>
</body>
</html>
