<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ATM Interface</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
    }
    h1 {
      color: #00698f;
      text-align: center;
    }
    form {
      width: 50%;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
      display: block;
      margin-bottom: 10px;
    }
    input[type="number"] {
      width: 100%;
      height: 30px;
      padding: 10px;
      border: 1px solid #ccc;
    }
    input[type="submit"] {
      margin-top: 10px;
      margin-bottom: 10px;
      width: 100%;
      height: 30px;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background-color: #00698f;
      color: #ffffff;
      cursor: pointer;
    }
    input[type="submit"]:hover {
      background-color: #004975;
    }
  </style>
</head>
<body>
<h1>ATM Interface</h1>
<form action="ATMServlet" method="post">
  <p style="color: red;">
    <%
      String error = (String) request.getAttribute("Error");
      if(error != null) {
        response.getWriter().println(error);
      }
    %>
  </p>

  <p style="color: red;">
    <%
      String success = (String) request.getAttribute("Success");
      if(success != null) {
        response.getWriter().println(success);
      }
    %>
  </p>
  <label>Amount:</label>
  <input type="number" name="amount" required><br><br>
  <input type="submit" name="withdraw" value="Withdraw">
  <input type="submit" name="deposit" value="Deposit">
  <input type="submit" name="checkBalance" value="Check Balance" onclick="removeRequired()">
</form>
<script>
  function removeRequired() {
    document.getElementsByName("amount")[0].required = false;
  }
</script>
</body>
</html>