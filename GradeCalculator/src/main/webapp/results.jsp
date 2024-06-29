<!-- results.jsp -->
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Results - Student Grade Calculator</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      margin: 0;
      padding: 20px;
    }
    .results {
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
    p {
      margin-bottom: 10px;
    }
  </style>

</head>
<body>
<div class="results">
  <h2>Results - Student Grade Calculator</h2>
  <p>Total Marks: ${totalMarks}</p>
  <p>Average Percentage: ${averagePercentage}</p>
  <p>Grade: ${grade}</p>
</div>
</body>
</html>
