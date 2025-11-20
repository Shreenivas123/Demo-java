<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Elastic Beanstalk App from Jenkins</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #9face6 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .container {
            text-align: center;
            background: white;
            padding: 40px 60px;
            border-radius: 20px;
            box-shadow: 0px 8px 25px rgba(0,0,0,0.2);
            animation: fadeIn 1.5s ease-in-out;
        }
        h1 {
            color: #4A47A3;
            margin-bottom: 20px;
            font-size: 2rem;
        }
        p {
            font-size: 1.2rem;
            margin-top: 20px;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: white;
            background: #4A47A3;
            padding: 12px 25px;
            border-radius: 30px;
            transition: all 0.3s ease;
            font-weight: bold;
        }
        a:hover {
            background: #6C63FF;
            transform: translateY(-3px);
            box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to   { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 Welcome to Jenkins CI/CD Deployment</h1>
        <p>This mini project is deployed on <b>Apache Tomcat</b> for the <i>Evening batch 7.30PM</i>.</p>
        <p><a href="hello">Say Hello to Shreenivas with Email ✉️</a></p>
    </div>
</body>
</html>

