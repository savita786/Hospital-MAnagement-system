<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Our Doctors – Max Care Hospital</title>

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
    nav a:hover { text-decoration: underline; }

    /* TITLE */
    h2 {
        text-align: center;
        margin-top: 40px;
        color: #0c6c69;
    }

    /* DOCTOR GRID */
    .doctor-container {
        max-width: 1100px;
        margin: 40px auto;
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 25px;
        padding: 20px;
    }

    /* DOCTOR CARD */
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
        object-fit: cover;
        border-radius: 50%;
        border: 4px solid #0c6c69;
        margin-bottom: 15px;
    }
    .doctor-card h3 {
        color: #0c6c69;
        margin: 8px 0;
    }
    .doctor-card p {
        margin: 6px 0;
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
        margin-top: 40px;
    }
</style>

</head>
<body>

<!-- HEADER -->
<header>
    <div class="logo">Max Care Hospital</div>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="doctors.jsp">Doctors</a>
        <a href="appointment.jsp">Appointment</a>
        <a href="emergency.jsp">Emergency</a>
        <a href="contact.jsp">Contact</a>
        <a href="login.jsp">Login</a>
    </nav>
</header>

<h2>Our Specialist Doctors</h2>

<!-- DOCTOR LIST GRID -->
<div class="doctor-container">

    <!-- Doctor 1 -->
    <div class="doctor-card">
        <img src="images/doc1.jpg" alt="Doctor">
        <h3>Dr. Rajesh Sharma</h3>
        <p><b>Specialist:</b> Cardiologist</p>
        <p><b>Experience:</b> 15 Years</p>
        <p><b>Degree:</b> MBBS, MD, DM (Cardiology)</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <!-- Doctor 2 -->
    <div class="doctor-card">
        <img src="images/doc2.jpg" alt="Doctor">
        <h3>Dr. Neha Verma</h3>
        <p><b>Specialist:</b> Neurologist</p>
        <p><b>Experience:</b> 10 Years</p>
        <p><b>Degree:</b> MBBS, MD (Neuro), Fellowship</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <!-- Doctor 3 -->
    <div class="doctor-card">
        <img src="images/doc3.jpg" alt="Doctor">
        <h3>Dr. Amit Kapoor</h3>
        <p><b>Specialist:</b> Orthopedic Surgeon</p>
        <p><b>Experience:</b> 12 Years</p>
        <p><b>Degree:</b> MBBS, MS (Ortho)</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <!-- Doctor 4 -->
    <div class="doctor-card">
        <img src="images/doc4.jpg" alt="Doctor">
        <h3>Dr. Priya Saxena</h3>
        <p><b>Specialist:</b> Gynecologist</p>
        <p><b>Experience:</b> 8 Years</p>
        <p><b>Degree:</b> MBBS, MD (Gynecology)</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <!-- Doctor 5 -->
    <div class="doctor-card">
        <img src="images/doc5.jpg" alt="Doctor">
        <h3>Dr. Manish Gupta</h3>
        <p><b>Specialist:</b> Pediatrician</p>
        <p><b>Experience:</b> 11 Years</p>
        <p><b>Degree:</b> MBBS, MD (Pediatrics)</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

    <!-- Doctor 6 -->
    <div class="doctor-card">
        <img src="images/doc6.jpg" alt="Doctor">
        <h3>Dr. Sana Ali</h3>
        <p><b>Specialist:</b> Dermatologist</p>
        <p><b>Experience:</b> 7 Years</p>
        <p><b>Degree:</b> MBBS, MD (Dermatology)</p>
        <a href="appointment.jsp" class="btn">Book Appointment</a>
    </div>

</div>

<!-- FOOTER -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
