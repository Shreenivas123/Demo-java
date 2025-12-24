<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Jenkins CI/CD Deployment</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        font-family: 'Poppins', sans-serif;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #667eea, #764ba2);
        overflow: hidden;
        color: #fff;
    }

    /* Animated gradient overlay */
    body::before {
        content: "";
        position: absolute;
        inset: 0;
        background: radial-gradient(circle at top left, rgba(255,255,255,0.15), transparent 60%),
                    radial-gradient(circle at bottom right, rgba(0,0,0,0.2), transparent 60%);
        animation: pulse 6s infinite alternate;
        z-index: 0;
    }

    .container {
        position: relative;
        z-index: 2;
        max-width: 520px;
        padding: 55px 65px;
        text-align: center;
        border-radius: 28px;
        background: rgba(255, 255, 255, 0.18);
        backdrop-filter: blur(14px);
        border: 1px solid rgba(255,255,255,0.35);
        box-shadow:
            0 20px 50px rgba(0,0,0,0.35),
            inset 0 0 30px rgba(255,255,255,0.1);
        animation: fadeUp 1.6s ease forwards;
    }

    h1 {
        font-size: 2.4rem;
        margin-bottom: 15px;
        font-weight: 700;
        letter-spacing: 0.5px;
        text-shadow: 0 4px 12px rgba(0,0,0,0.4);
    }

    p {
        font-size: 1.1rem;
        line-height: 1.6;
        color: #f1f1f1;
        margin: 12px 0;
    }

    .badge {
        display: inline-block;
        margin-bottom: 18px;
        padding: 6px 16px;
        font-size: 0.85rem;
        border-radius: 20px;
        background: rgba(255,255,255,0.25);
        border: 1px solid rgba(255,255,255,0.4);
        letter-spacing: 0.8px;
        text-transform: uppercase;
    }

    a.button {
        display: inline-block;
        margin-top: 30px;
        padding: 15px 36px;
        font-size: 1.05rem;
        font-weight: 600;
        text-decoration: none;
        color: #4b3fd1;
        background: linear-gradient(135deg, #ffffff, #f1f1ff);
        border-radius: 50px;
        box-shadow:
            0 10px 30px rgba(255,255,255,0.45),
            inset 0 -2px 6px rgba(0,0,0,0.1);
        transition: all 0.35s ease;
    }

    a.button:hover {
        transform: translateY(-5px) scale(1.05);
        box-shadow:
            0 18px 45px rgba(255,255,255,0.65),
            inset 0 -2px 10px rgba(0,0,0,0.15);
    }

    /* Floating shapes */
    .blob {
        position: absolute;
        border-radius: 50%;
        filter: blur(2px);
        opacity: 0.35;
        animation: float 10s infinite alternate ease-in-out;
    }

    .blob.one {
        width: 160px;
        height: 160px;
        background: #ffffff;
        top: 12%;
        left: 10%;
    }

    .blob.two {
        width: 260px;
        height: 260px;
        background: #000000;
        bottom: 10%;
        right: 12%;
        animation-duration: 12s;
    }

    .blob.three {
        width: 200px;
        height: 200px;
        background: #ffffff;
        top: 55%;
        left: 65%;
        animation-duration: 14s;
    }

    @keyframes fadeUp {
        from {
            opacity: 0;
            transform: translateY(50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes float {
        from {
            transform: translateY(0px) translateX(0px);
        }
        to {
            transform: translateY(-35px) translateX(20px);
        }
    }

    @keyframes pulse {
        from { opacity: 0.8; }
        to { opacity: 1; }
    }

    /* Mobile responsiveness */
    @media (max-width: 600px) {
        .container {
            padding: 40px 30px;
        }
        h1 {
            font-size: 1.9rem;
        }
        p {
            font-size: 1rem;
        }
    }
</style>
</head>

<body>

<!-- Floating background blobs -->
<div class="blob one"></div>
<div class="blob two"></div>
<div class="blob three"></div>

<div class="container">
    <div class="badge">Jenkins • CI/CD • Tomcat</div>
    <h1>🚀 Deployment Successful</h1>
    <p>
        This mini project is deployed using <b>Jenkins CI/CD</b> on
        <b>Apache Tomcat</b>.
    </p>
    <p>
        Batch: <i>Weekdays 10:00 AM</i>
    </p>

    <a class="button" href="hello">
        ✉️ Say Hello to Shreenivas
    </a>
</div>

</body>
</html>
