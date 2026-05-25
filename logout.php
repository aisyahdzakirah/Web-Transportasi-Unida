<?php
session_start();
session_destroy();
?>
<!DOCTYPE html>
<html>
<head>
<script>
    // kirim sinyal logout ke semua tab
    localStorage.setItem('forceLogout', Date.now());
    window.location.href = "login.php";
</script>
</head>
<body></body>
</html>
