<?php
session_start();
include 'koneksi.php';

$username = $_POST['username'];
$password = md5($_POST['password']);

$query = mysqli_query($koneksi,
    "SELECT * FROM users 
     WHERE username='$username' AND password='$password'"
);

$data = mysqli_fetch_assoc($query);

if ($data) {
    $_SESSION['login'] = true;
    $_SESSION['user_id'] = $data['id'];      // 🔴 INI KUNCINYA
    $_SESSION['username'] = $data['username'];
    $_SESSION['role'] = $data['role'];

    // Redirect sesuai role
    if ($data['role'] == 'admin') {
        header("Location: admin/dashboard.php");
    } else {
        header("Location: user/beranda.php");
    }
    exit;
} else {
    echo "<script>
        alert('Username atau Password salah!');
        window.location='login.php';
    </script>";
}
?>
