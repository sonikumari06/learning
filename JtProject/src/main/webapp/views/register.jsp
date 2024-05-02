<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Document</title>

     <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

       <style>
              body {
                  background-color: #f0f8ff;
              }
              .custom-container {
                  max-width: 500px; /* Adjust the maximum width as needed */
                  margin: 0 auto; /* Center the container horizontally */
                  background-color: #fff;
                  border-radius: 10px;
                  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                  padding: 40px;
                  transition: background-color 0.3s; /* Added transition for smooth effect */
              }
              .custom-container:hover {
                  background-color: #f9f9f9; /* Change background color on hover */
              }
              .form-group {
                  margin-bottom: 20px;
                  transition: background-color 0.3s; /* Added transition for smooth effect */
                  border-radius: 10px;
                  padding: 20px;
              }
              .form-group:hover {
                  background-color: #f9f9f9; /* Change background color of form group on hover */
              }
              label {
                  font-weight: bold;
                  color: #333;
              }
              input[type="text"],
              input[type="email"],
              input[type="password"],
              textarea {
                  border: none;
                  border-bottom: 2px solid #ccc;
                  outline: none;
                  border-radius: 0;
                  transition: border-color 0.3s;
              }
              input[type="text"]:focus,
              input[type="email"]:focus,
              input[type="password"]:focus,
              textarea:focus {
                  border-color: #007bff;
              }
              input[type="submit"] {
                  background-color: #007bff;
                  border: none;
                  color: #fff;
                  padding: 10px 20px;
                  border-radius: 5px;
                  cursor: pointer;
                  transition: background-color 0.3s;
              }
              input[type="submit"]:hover {
                  background-color: #0056b3;
              }
          </style>
</head>
<body>

<br>
  <div class="container custom-container">
      <div class="row justify-content-center">
          <!-- Sign Up -->
          <div class="col-md-6">
              <form action="newuserregister" class="form" id="form1" method="post">
                  <h2 class="form__title">Sign Up</h2>
                  <div class="form-group">
                      <label for="username">User Name</label>
                      <input type="text" class="form-control" name="username" id="username" placeholder="Enter Your Username" required>
                  </div>
                  <div class="form-group">
                      <label for="email">Email address</label>
                      <input type="email" class="form-control" name="email" id="email" placeholder="Enter Your Email" required>
                  </div>
                  <div class="form-group">
                      <label for="password">Password</label>
                      <input type="password" class="form-control" name="password" id="password" placeholder="Enter Your Password" required minlength="8">
                  </div>
                  <div class="form-group text-center">
                      <input type="submit" class="btn btn-primary" value="Sign Up">
                  </div>
              </form>
          </div>
      </div>
  </div>


<script>
    function showPassword() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>