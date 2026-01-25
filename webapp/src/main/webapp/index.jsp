<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>DevOps Registration</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f6f8;
    }

    .container {
      background-color: #ffffff;
      padding: 20px;
      margin: 40px auto;
      width: 40%;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h1 {
      text-align: center;
      color: #333;
    }

    p {
      text-align: center;
      color: #555;
    }

    label {
      font-weight: bold;
      display: block;
      margin-top: 15px;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border-radius: 4px;
      border: 1px solid #ccc;
    }

    .registerbtn {
      background-color: #0b5ed7;
      color: white;
      padding: 12px;
      border: none;
      width: 100%;
      margin-top: 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 5px;
    }

    .registerbtn:hover {
      background-color: #084298;
    }

    .signin {
      text-align: center;
      margin-top: 15px;
    }

    hr {
      margin: 20px 0;
    }
  </style>
</head>

<body>

<form action="action_page.php" method="post">
  <div class="container">
    <h1>New User Registration</h1>
    <p>DevOps Learning Program by <b>MUTTHU M</b></p>
    <hr>

    <label for="name">Enter Your Name</label>
    <input type="text" placeholder="Enter Full Name" name="name" id="name" required>

    <label for="mobile">Enter Your Mobile Number</label>
    <input type="tel" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

    <label for="email">Enter Your Email</label>
    <input type="email" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw">Password</label>
    <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

    <label for="psw-repeat">Repeat Password</label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a></p>
  </div>
</form>

<h1 style="text-align:center;">Thank You, Happy Learning 🚀</h1>

</body>
</html>
