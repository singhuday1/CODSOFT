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
        form {
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            justify-content: center;
            align-items: center;
            max-width: 50%;
        }
        label {
            font-size: 1.2em;
            display: block;
            margin-bottom: 10px;
        }
        input[type="number"] {
            padding: 10px;
            font-size: 1em;
            margin-top: 10px;
            border: none;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }
        button {
            margin-top: 20px;
            padding: 15px 30px;
            font-size: 1.2em;
            color: white;
            background-color: #4682b4;
            border: none;
            border-radius: 30px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
            width: 100%;
        }
        button:hover {
            background-color: #315f7d;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
        p {
            font-size: 1.2em;
            color: #f8d7da;
            background-color: #721c24;
            border-radius: 5px;
            padding: 10px;
            display: inline-block;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        hr {
            margin: 20px auto;
            width: 80%;
            border: 1px solid #fff;
        }
        h2 {
            color: #fff;
            font-size: 2em;
            margin-top: 40px;
            text-shadow: 2px 2px #000;
        }
        .stats {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .desc{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
    </style>
</head>
<body>
<h1>Guess the Number</h1>
<form method="post" action="game">
    <label for="guess">Enter your guess (1-100): </label>
    <input type="number" id="guess" name="guess" min="1" max="100" required>
    <button type="submit">Submit</button>
</form>
<div class="desc">
    <p>${message}</p>
    <a href="game">Play Again</a>
</div>
<hr>
<h2>Game Stats</h2>
<div class="stats">
    <p>Rounds Played: ${sessionScope.roundsPlayed}</p>
    <p>Your Score: ${sessionScope.score}</p>
</div>
</body>
</html>
