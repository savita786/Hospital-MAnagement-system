<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cardiologist Doctors – Max Care Hospital</title>

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

    /* DOCTOR CARDS */
    .doctor-container {
        max-width: 1100px;
        margin: 40px auto;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 25px;
        padding: 20px;
    }

    .doctor-card {
        background: white;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        text-align: center;
    }

    .doctor-card img {
        width: 130px;
        height: 130px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 15px;
        border: 4px solid #0c6c69;
    }

    .doctor-card h3 {
        margin: 10px 0 5px;
        color: #0c6c69;
    }

    .doctor-card p {
        margin: 4px 0;
        font-size: 15px;
    }

    .doctor-card .btn {
        margin-top: 12px;
        display: inline-block;
        padding: 10px 18px;
        background-color: #0c6c69;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-weight: bold;
    }

    .doctor-card .btn:hover {
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
        <a href="cardiologists.jsp">Cardiologists</a>
        <a href="appointment.jsp">Appointment</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
    </nav>
</header>

<!-- DOCTOR LIST -->
<h2 style="text-align:center; margin-top:40px; color:#0c6c69;">Cardiologist Specialists</h2>

<div class="doctor-container">

    <div class="doctor-card">
        <img src="images/doc1.jpg" alt="Doctor">
        <h3>Dr. Rajesh Sharma</h3>
        <p>MBBS, MD, DM (Cardiology)</p>
        <p>Experience: 15+ Years</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <div class="doctor-card">
        <img src="images/doc2.jpg" alt="Doctor">
        <h3>Dr. Neha Verma</h3>
        <p>MBBS, MD, Fellowship in Cardiology</p>
        <p>Experience: 10+ Years</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <div class="doctor-card">
        <img src="images/doc3.jpg" alt="Doctor">
        <h3>Dr. Amit Kapoor</h3>
        <p>MBBS, MD, DM (Heart Specialist)</p>
        <p>Experience: 18+ Years</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <div class="doctor-card">
        <img src="images/doc4.jpg" alt="Doctor">
        <h3>Dr. Priya Saxena</h3>
        <p>MBBS, MD, Interventional Cardiology</p>
        <p>Experience: 12+ Years</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

</div>

<!-- FOOTER -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
