<!-- index.jsp -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Grade Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 20px;
        }
        .calculator {
            max-width: 600px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label {
            margin-bottom: 10px;
            font-weight: bold;
            display: inline-block;
        }
        input[type="text"] {
            padding: 8px;
            margin-bottom: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
            display: inline-block;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="calculator">
    <h2>Student Grade Calculator</h2>
    <form action="gradeCalculator" method="post">
        <div>
            <label>Enter marks for Subject 1:</label>
            <input type="text" name="marks1" required min="0" max="100"><br><br>
        </div>

        <div>
            <label>Enter marks for Subject 2:</label>
            <input type="text" name="marks2" min="0" max="100" required><br><br>
        </div>

        <div>
            <label>Enter marks for Subject 3:</label>
            <input type="text" name="marks3" min="0" max="100" required><br><br>
        </div>

        <div>
            <label>Enter marks for Subject 4:</label>
            <input type="text" name="marks4" min="0" max="100" required><br><br>
        </div>

        <div>
            <label>Enter marks for Subject 5:</label>
            <input type="text" name="marks5" min="0" max="100" required><br><br>
        </div>

        <input type="submit" value="Calculate Grades">
    </form>
</div>
</body>
</html>
