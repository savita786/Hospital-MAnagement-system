<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Register – Max Care Hospital</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f6f8fa;
        color: #333;
    }

    /* HEADER — Same as home.jsp */
    header {
        background-color: #0c6c69;
        color: white;
        padding: 12px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
    }

    header .logo {
        font-size: 26px;
        font-weight: bold;
        letter-spacing: 1px;
    }

    nav a {
        text-decoration: none;
        color: white;
        margin-left: 25px;
        font-size: 16px;
        font-weight: bold;
    }

    nav a:hover {
        text-decoration: underline;
    }

    /* FORM BOX */
    main {
        max-width: 480px;
        margin: 40px auto;
        background: #fff;
        padding: 28px;
        border-radius: 10px;
        box-shadow: 0 4px 14px rgba(0, 0, 0, 0.1);
    }

    main h2 {
        margin-top: 0;
        text-align: center;
        color: #0c6c69;
        margin-bottom: 8px;
    }

    main p {
        text-align: center;
        color: #666;
        margin-top: 0;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        display: block;
        margin: 12px 0 5px;
    }

    input, select {
        width: 100%;
        padding: 10px;
        font-size: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        margin-bottom: 12px;
    }

    input[type=radio] {
        width: auto;
        margin-right: 6px;
    }

    input[type=submit] {
        background: #0c6c69;
        color: white;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        border-radius: 6px;
        margin-top: 10px;
    }

    input[type=submit]:hover {
        background: #094f50;
    }

    .login-link {
        text-align: center;
        margin-top: 14px;
    }

    .login-link a {
        background: #1aa39a;
        padding: 10px 16px;
        border-radius: 6px;
        text-decoration: none;
        color: white;
        font-weight: bold;
    }

    .login-link a:hover {
        background: #147a74;
    }

    /* FOOTER — Same as home.jsp */
    footer {
        background-color: #0c6c69;
        color: white;
        padding: 20px;
        text-align: center;
        margin-top: 50px;
    }
</style>

</head>
<body>

<%
String message = (String) request.getAttribute("msg");
if (message != null) {
%>
<h4 style="color:red; text-align:center;"><%= message %></h4>
<% } %>

<!-- HEADER (same as home.jsp) -->
<header>
    <div class="logo">Max Care Hospital</div>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="#">Doctors</a>
        <a href="#">Departments</a>
        <a href="appointment.jsp">Appointment</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
    </nav>
</header>

<!-- REGISTRATION FORM -->
<main>
    <h2>Create Account</h2>
    <p>Sign up to access your patient dashboard</p>

    <form action="Register" method="get">

        <label>USER ID:</label>
        <input type="number" name="userid" placeholder="Enter your ID" required>

        <label>USER NAME:</label>
        <input type="text" name="username" placeholder="Enter your name" required>

        <label>USER EMAIL:</label>
        <input type="email" name="useremail" placeholder="Enter your email" required>

        <label>USER PASSWORD:</label>
        <input type="password" name="userpassword" placeholder="Enter your password" required>

        <label>USER DOB:</label>
        <input type="date" name="userdob" required>

        <label>USER GENDER:</label>
        <input type="radio" name="gender" value="MALE"> Male
        <input type="radio" name="gender" value="FEMALE"> Female

        <input type="submit" value="Register">
    </form>

    <div class="login-link">
        <a href="login.jsp">Already Registered? Login</a>
    </div>
</main>

<!-- FOOTER (same as home.jsp) -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
