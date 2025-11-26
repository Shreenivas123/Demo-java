<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Elastic Beanstalk App from Jenkins</title>
    <style>
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .container {
            background: rgba(255, 255, 255, 0.25);
            padding: 50px 70px;
            border-radius: 25px;
            backdrop-filter: blur(12px);
            box-shadow: 0px 8px 25px rgba(0,0,0,0.25);
            text-align: center;
            animation: slideUp 1.5s ease;
            border: 1px solid rgba(255,255,255,0.5);
        }

        h1 {
            font-size: 2.2rem;
            color: #ffffff;
            margin-bottom: 15px;
            text-shadow: 2px 2px 8px rgba(0,0,0,0.3);
        }

        p {
            font-size: 1.2rem;
            color: #f9f9f9;
            margin-top: 10px;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            text-decoration: none;
            background: #ffffff;
            color: #4A47A3;
            padding: 14px 30px;
            font-size: 1.1rem;
            border-radius: 40px;
            font-weight: 600;
            transition: 0.3s ease-in-out;
            box-shadow: 0px 4px 20px rgba(255,255,255,0.4);
        }

        a:hover {
            transform: translateY(-4px) scale(1.05);
            box-shadow: 0px 8px 25px rgba(255,255,255,0.6);
        }

        /* Background floating circles */
        .circle {
            position: absolute;
            border-radius: 50%;
            background: rgba(255,255,255,0.2);
            animation: float 8s infinite ease-in-out alternate;
            z-index: 0;
        }

        .circle.small { width: 120px; height: 120px; top: 10%; left: 15%; }
        .circle.medium { width: 200px; height: 200px; bottom: 15%; right: 10%; }
        .circle.large { width: 300px; height: 300px; top: 55%; left: 60%; }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(40px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        @keyframes float {
            from { transform: translateY(0px); }
            to   { transform: translateY(-30px); }
        }
    </style>
</head>
<body>

    <!-- Decorative floating circles -->
    <div class="circle small"></div>
    <div class="circle medium"></div>
    <div class="circle large"></div>

    <div class="container">
        <h1>🚀 Welcome to Jenkins CI/CD Deployment</h1>
        <p>This mini project is deployed on <b>Apache Tomcat</b> for the <i>Evening 7.30pm batchproject</i>.</p>
        <p><a href="hello">Say Hello to Shreenivas with Email ✉️</a></p>
    </div>

</body>
</html>
