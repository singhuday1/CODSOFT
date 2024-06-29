<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Number Guessing Game</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #fff;
            text-align: center;
            padding-top: 50px;
        }
        h1 {
            color: #fff;
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px #000;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 15px 30px;
            font-size: 1.2em;
            color: #fff;
            background-color: #4682b4;
            text-decoration: none;
            border-radius: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        a:hover {
            background-color: #315f7d;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<h1>Welcome to the Number Guessing Game</h1>
<a href="game">Start Game</a>
</body>
</html>
