<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emergency Services – Max Care Hospital</title>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f6f8fa;
        color: #333;
    }

    /* HEADER */
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

    /* PAGE TITLE */
    h2 {
        text-align: center;
        color: #0c6c69;
        margin-top: 40px;
    }

    /* EMERGENCY CARDS */
    .card-container {
        max-width: 1100px;
        margin: 40px auto;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 25px;
        padding: 20px;
    }

    .service-card {
        background: white;
        border-radius: 10px;
        padding: 25px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        text-align: center;
    }

    .service-card h3 {
        color: #0c6c69;
        margin-bottom: 10px;
    }

    .service-card p {
        font-size: 16px;
        margin: 10px 0;
    }

    .service-card .btn {
        margin-top: 12px;
        display: inline-block;
        padding: 10px 18px;
        background-color: #0c6c69;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
    }

    .service-card .btn:hover {
        background-color: #094f50;
    }

    /* EMERGENCY FORM */
    .emergency-form {
        max-width: 600px;
        margin: 50px auto;
        background: white;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .emergency-form label {
        display: block;
        margin: 12px 0 5px;
        font-weight: bold;
    }

    .emergency-form input,
    .emergency-form textarea,
    .emergency-form select {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 6px;
        margin-bottom: 15px;
        font-size: 15px;
    }

    .emergency-form button {
        width: 100%;
        padding: 12px;
        background-color: #0c6c69;
        color: white;
        border: none;
        border-radius: 6px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }

    .emergency-form button:hover {
        background-color: #094f50;
    }

    /* FOOTER */
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

<!-- HEADER -->
<header>
    <div class="logo">Max Care Hospital</div>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="cardiologists.jsp">Doctors</a>
        <a href="appointment.jsp">Appointment</a>
        <a href="emergency.jsp">Emergency</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
    </nav>
</header>

<h2>Emergency Services</h2>

<!-- EMERGENCY CARDS -->
<div class="card-container">

    <div class="service-card">
        <h3>24/7 Ambulance Service</h3>
        <p>Fast ambulance support available across the city.</p>
        <p><b>Call: +91 98765 43210</b></p>
        <a href="tel:+919876543210" class="btn">Call Now</a>
    </div>

    <div class="service-card">
        <h3>Emergency Helpline</h3>
        <p>Immediate medical support from our emergency team.</p>
        <p><b>Call: 108</b></p>
        <a href="tel:108" class="btn">Call Now</a>
    </div>

    <div class="service-card">
        <h3>Video Call Emergency</h3>
        <p>Talk to our emergency doctor via video call in critical situations.</p>
        <a href="#" class="btn">Start Video Call</a>
    </div>

</div>

<!-- EMERGENCY REQUEST FORM -->
<div class="emergency-form">
    <h3 style="text-align:center; color:#0c6c69;">Request Emergency Help</h3>

    <form action="Emergency" method="post">

        <label>Your Name:</label>
        <input type="text" name="name" required>

        <label>Your Mobile Number:</label>
        <input type="text" name="mobile" required>

        <label>Type of Emergency:</label>
        <select name="type" required>
            <option>Heart Attack</option>
            <option>Accident Injury</option>
            <option>Breathing Problem</option>
            <option>Pregnancy Emergency</option>
            <option>Other</option>
        </select>

        <label>Location:</label>
        <textarea name="location" rows="3" required></textarea>

        <button type="submit">Request Assistance</button>
    </form>
</div>

<!-- FOOTER -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
