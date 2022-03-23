<!DOCTYPE html>
<html>
<head>
<title>Form</title>
</head>
<body><h4>Form Pendataan Mahasiswa</h4>
<form action="proses.php" method="post" name="formLat">
    <table>
        <tr>
            <td>Nama</td>
            <td><input type="text" required="fNama" name="fNama"></td>
            </tr>
        <tr>
            <td>Program Studi</td>
            <td><select name="fProdi" required="">
            <option value="11"> Teknik Informatika - S1</option>
            <option value="12"> Sistem Informasi - S1</option>
            <option value="13"> Teknik Elektro - S1</option>
            <option value="14"> Ilmu Komputer - S3</option>
            </select></td>
        </tr>
        <tr>
            <td>Nilai Tugas</td>
            <td><input type="number" required="" name="fNilaiTugas"></td>
        <tr>
            <td colspan="2" align="center">
            <input type="submit" name="fsubmit" value="Simpan"></input>
            </td></td>
        </tr>
    </table>
    </form>
</body>
</html>
