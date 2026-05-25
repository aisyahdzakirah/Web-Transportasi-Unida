<?php
session_start();
if (isset($_SESSION['login']) && $_SESSION['login'] === true) {
    if ($_SESSION['role'] === 'admin') {
        header("Location: admin/dashboard.php");
    } else {
        header("Location: user/beranda.php");
    }
    exit;
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Login | Transportasi UNIDA</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
@keyframes fadeSlide {
    from {
        opacity: 0;
        transform: translateY(40px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

@keyframes zoomBg {
    from {
        transform: scale(1);
    }
    to {
        transform: scale(1.08);
    }
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    height: 100vh;
    display: flex;
    overflow: hidden;
}

/* LEFT IMAGE */
.left {
    width: 60%;
    background: url("Gemini_Generated_Image_a0t3cga0t3cga0t3.png") center/cover no-repeat;
    animation: zoomBg 20s infinite alternate ease-in-out;
    position: relative;
}

.left::after {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(
        rgba(0,0,0,0.35),
        rgba(0,0,0,0.35)
    );
}

/* RIGHT LOGIN */
.right {
    width: 40%;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #f4f6f9;
}

.login-box {
    width: 360px;
    padding: 35px;
    background: white;
    border-radius: 18px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    text-align: center;
    animation: fadeSlide 1s ease forwards;
}

.login-box img {
    width: 90px;
    margin-bottom: 12px;
}

.login-box h2 {
    color: #0b3c5d;
    margin-bottom: 5px;
}

.login-box p {
    font-size: 14px;
    color: #666;
    margin-bottom: 25px;
}

.login-box input {
    width: 100%;
    padding: 13px;
    margin-bottom: 15px;
    border-radius: 10px;
    border: 1px solid #ddd;
    outline: none;
    transition: 0.3s;
}

.login-box input:focus {
    border-color: #0b3c5d;
    box-shadow: 0 0 0 2px rgba(11,60,93,0.1);
}

.login-box button {
    width: 100%;
    padding: 13px;
    border-radius: 10px;
    border: none;
    background: linear-gradient(135deg,#0b3c5d,#1b6ca8);
    color: white;
    font-size: 16px;
    cursor: pointer;
    transition: 0.3s;
}

.login-box button:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 18px rgba(27,108,168,0.4);
}

.footer {
    margin-top: 18px;
    font-size: 12px;
    color: #999;
}

/* RESPONSIVE */
@media(max-width: 768px) {
    .left {
        display: none;
    }
    .right {
        width: 100%;
    }
}
</style>
</head>

<body>

<div class="left"></div>

<div class="right">
    <div class="login-box">
        <img src="Logo-UNIDA-for-Watermark.png" alt="UNIDA Logo">
        <h2>Transportasi UNIDA</h2>
        <p>Universitas Darussalam Gontor</p>

        <form action="proses_login.php" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Masuk</button>
        </form>

        <div class="footer">
            © <?= date("Y"); ?> UNIDA Gontor
        </div>
    </div>
</div>

</body>
</html>
