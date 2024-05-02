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

   <style>

             body {
                     background-color: #f0f8ff;
                   }
             .custom-container {
                 max-width: 500px;
                 margin: 0 auto;
                 background-color: #fff;
                 border-radius: 10px;
                 box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                 padding: 40px;
                 transition: background-color 0.3s; /* Added transition for smooth effect */
             }
             .custom-container:hover {
                 background-color: #f9f9f9; /* Change background color on hover */
             }
             .custom-container .form-group {
                 margin-bottom: 20px;
                 border-radius: 10px;
                 padding: 20px;
                 transition: background-color 0.3s; /* Added transition for smooth effect */
             }
             .custom-container .form-group:hover {
                 background-color: #f9f9f9; /* Change background color of form group on hover */
             }
             .custom-container label {
                 font-weight: bold;
                 color: #333;
             }
             .custom-container input[type="text"],
             .custom-container input[type="email"],
             .custom-container input[type="password"],
             .custom-container textarea {
                 border: none;
                 border-bottom: 2px solid #ccc;
                 outline: none;
                 border-radius: 0;
                 transition: border-color 0.3s;
             }
             .custom-container input[type="text"]:focus,
             .custom-container input[type="email"]:focus,
             .custom-container input[type="password"]:focus,
             .custom-container textarea:focus {
                 border-color: #007bff;
             }
             .custom-container input[type="submit"] {
                 background-color: #007bff;
                 border: none;
                 color: #fff;
                 padding: 10px 20px;
                 border-radius: 5px;
                 cursor: pointer;
                 transition: background-color 0.3s;
             }
             .custom-container input[type="submit"]:hover {
                 background-color: #0056b3;
             }
             .linkControl {
                 color: #007bff;
                 text-decoration: none;
             }
             .linkControl:hover {
                 text-decoration: underline;
             }
         </style>


</head>
<body>



<div class="container my-3">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <h2>User Login</h2>
            <form action="userloginvalidate" method="post" class="custom-container">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" name="username" id="username" placeholder="Username*" required class="form-control form-control-lg">
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control form-control-lg" placeholder="Password*" required name="password" id="password">
                </div>
                <span>Don't have an account <a class="linkControl" href="/register">Register here</a></span>
                <br><br>
                <input type="submit" value="Login" class="btn btn-primary btn-block">
            </form>
            <br>
            <h3 style="color:red;">${message}</h3>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>