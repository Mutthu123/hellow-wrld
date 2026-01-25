
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
  padding: 25px;
  margin: 40px auto;
  width: 40%;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

h1 {
  text-align: center;
  color: #0d6efd;
}

label {
  font-weight: bold;
  margin-top: 15px;
  display: block;
}

input {
  width: 100%;
  padding: 10px;
  margin-top: 5px;
  border-radius: 5px;
  border: 1px solid #ccc;
}

input:focus {
  border-color: #0d6efd;
  outline: none;
}

.registerbtn {
  background-color: #0d6efd;
  color: white;
  padding: 12px;
  width: 100%;
  border: none;
  font-size: 16px;
  border-radius: 5px;
  margin-top: 20px;
  cursor: pointer;
}

.registerbtn:hover {
  background-color: #084298;
}

.error {
  color: red;
  font-size: 14px;
}

.success {
  color: green;
  text-align: center;
  font-size: 18px;
}
</style>
</head>

<body>

<form onsubmit="return validateForm()">
  <div class="container">
    <h1>DevOps Registration</h1>

    <label>Name (Only letters, max 20)</label>
    <input type="text" id="name" required>
    <div class="error" id="nameError"></div>

    <label>Mobile (Only numbers, 10 digits)</label>
    <input type="text" id="mobile" required>
    <div class="error" id="mobileError"></div>

    <label>Email (Only @gmail.com)</label>
    <input type="text" id="email" required>
    <div class="error" id="emailError"></div>

    <label>Password</label>
    <input type="password" id="password" required>
    <div class="error" id="passwordError"></div>

    <button type="submit" class="registerbtn">Register</button>

    <p class="success" id="successMsg"></p>
  </div>
</form>

<script>
function validateForm() {

  // Clear messages
  document.getElementById("nameError").innerHTML = "";
  document.getElementById("mobileError").innerHTML = "";
  document.getElementById("emailError").innerHTML = "";
  document.getElementById("passwordError").innerHTML = "";
  document.getElementById("successMsg").innerHTML = "";

  let name = document.getElementById("name").value;
  let mobile = document.getElementById("mobile").value;
  let email = document.getElementById("email").value;
  let password = document.getElementById("password").value;

  // Name: only letters, max 20
  let namePattern = /^[A-Za-z]{1,20}$/;
  if (!namePattern.test(name)) {
    document.getElementById("nameError").innerHTML =
      "Name must contain only letters and max 20 characters";
    return false;
  }

  // Mobile: only numbers, exactly 10
  let mobilePattern = /^[0-9]{10}$/;
  if (!mobilePattern.test(mobile)) {
    document.getElementById("mobileError").innerHTML =
      "Mobile number must be exactly 10 digits";
    return false;
  }

  // Email: only gmail.com
  let emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
  if (!emailPattern.test(email)) {
    document.getElementById("emailError").innerHTML =
      "Email must be a valid @gmail.com address";
    return false;
  }

  // Password: upper, lower, number, symbol
  let passwordPattern =
    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

  if (!passwordPattern.test(password)) {
    document.getElementById("passwordError").innerHTML =
      "Password must contain uppercase, lowercase, number & symbol (min 8 chars)";
    return false;
  }

  document.getElementById("successMsg").innerHTML =
    "Registration Successful 🚀 Happy DevOps Learning!";
  return false; // stop actual submit for demo
}
</script>

</body>
</html>
