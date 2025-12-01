<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Login – Max Care Hospital</title>

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
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
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

    /* LOGIN FORM */
    main {
        max-width: 420px;
        margin: 60px auto;
        background: #fff;
        padding: 28px;
        border-radius: 10px;
        box-shadow: 0 4px 14px rgba(0,0,0,0.1);
    }

    main h2 {
        margin-top: 0;
        text-align: center;
        color: #0c6c69;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        margin: 10px 0 5px;
        display: block;
        color: #333;
    }

    input[type=text],
    input[type=password] {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 15px;
    }

    input[type=submit] {
        width: 100%;
        background-color: #0c6c69;
        color: white;
        padding: 12px;
        margin-top: 10px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
    }

    input[type=submit]:hover {
        background-color: #094f50;
    }

    .register-btn {
        margin-top: 14px;
        text-align: center;
    }

    .register-btn a {
        background: #1aa39a;
        padding: 10px 16px;
        color: white;
        border-radius: 6px;
        text-decoration: none;
        font-weight: bold;
        display: inline-block;
    }

    .register-btn a:hover {
        background: #147a74;
    }

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

<!-- LOGIN BOX -->
<main>
    <h2>User Login</h2>

    <form action="login" method="post">
        <label>USER EMAIL</label>
        <input type="text" placeholder="Enter your email" name="useremail">

        <label>USER PASSWORD</label>
        <input type="password" placeholder="Enter your password" name="userpassword">

        <input type="submit" value="login">

        <div class="register-btn">
            <a href="Registration.jsp">Register</a>
        </div>
    </form>
</main>

<!-- FOOTER (same as home.jsp) -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
