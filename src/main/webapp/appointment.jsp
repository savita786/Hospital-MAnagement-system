<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment – Max Care Hospital</title>

    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f6f8fa;
            color: #333;
        }

        /* SAME HEADER AS HOME PAGE */
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

        /* PAGE TITLE HERO */
        .hero {
            background: url('hospital.jpg') no-repeat center/cover;
            height: 240px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
            box-shadow: inset 0 0 0 2000px rgba(0, 0, 0, 0.45);
        }

        .hero h2 {
            font-size: 36px;
            margin: 0;
        }

        /* APPOINTMENT FORM */
        .appointment {
            background: white;
            padding: 30px;
            max-width: 520px;
            margin: 40px auto;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .appointment h2 {
            text-align: center;
            color: #0c6c69;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        form label {
            margin: 10px 0 5px;
            font-weight: bold;
        }

        form input, form select {
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background: #0c6c69;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 17px;
            font-weight: bold;
        }

        button:hover {
            background: #094f50;
        }

        /* SAME FOOTER AS HOME PAGE */
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

<% String message =(String)request.getAttribute("msg");
if(message!=null){ %>
    <h4 style="color:red; text-align:center;"><%=message %></h4>
<% } %>

<!-- HOME PAGE HEADER -->
<header>
    <div class="logo">Max Care Hospital</div>
    <nav>
        <a href="home.jsp">Home</a>
        <a href="Doctor.jsp">Doctors</a>
   
        <a href="appointment.jsp">Appointment</a>
        <a href="contact.jsp">Contact</a>
    </nav>
</header>

<!-- PAGE HERO -->
<section class="hero">
    <h2>Book an Appointment</h2>
</section>

<!-- APPOINTMENT FORM -->
<section class="appointment">
    <h2>Schedule Your Visit</h2>

   <form action="Patient" method="post">

    <label for="name">Full Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="doctor">Choose a Doctor:</label>
    <select id="doctor" name="doctor" onchange="updateSlots()" required>
        <option value="Smith">Dr. Smith - Cardiologist</option>
        <option value="Johnson">Dr. Johnson - Neurologist</option>
        <option value="Brown">Dr. Brown - Pediatrician</option>
    </select>

    <label for="date">Appointment Date:</label>
    <input type="date" id="date" name="date" required>

    <label for="time">Available Time Slot:</label>
    <select id="time" name="time" required></select>

	<!-- VIDEO CALL OPTION -->
    <label for="mode">Consultation Mode:</label>
    <select id="mode" name="mode" required>
        <option value="In-Person">In-Person Visit</option>
        <option value="Video Call">Video Call Consultation</option>
    </select>

    <!-- PAYMENT OPTIONS -->
    <label for="payment">Payment Method:</label>
    <select id="payment" name="payment" required>
        <option value="Cash">Cash (Pay at Hospital)</option>
        <option value="UPI">UPI (Google Pay / PhonePe)</option>
        <option value="Card">Debit/Credit Card</option>
        <option value="Online">Pay Online</option>
    </select>
    <button type="submit" value="bookNow">Book Now</button>
</form>

<script>
function updateSlots() {
    const doctor = document.getElementById("doctor").value;
    const timeSelect = document.getElementById("time");
    timeSelect.innerHTML = ""; // Clear old slots

    let slots = [];

    if (doctor === "Smith") {  // Cardiologist
        slots = ["09:00 AM", "10:00 AM", "11:30 AM", "03:00 PM"];
    }
    else if (doctor === "Johnson") { // Neurologist
        slots = ["10:00 AM", "12:00 PM", "02:30 PM", "04:00 PM"];
    }
    else if (doctor === "Brown") { // Pediatrician
        slots = ["08:30 AM", "09:30 AM", "11:00 AM", "01:30 PM"];
    }

    // append new options
    slots.forEach(t => {
        const opt = document.createElement("option");
        opt.value = t;
        opt.textContent = t;
        timeSelect.appendChild(opt);
    });
}

// Run once when page loads
updateSlots();
</script>

</section>


<!-- HOME PAGE FOOTER -->
<footer>
    © 2025 Max Care Hospital | All Rights Reserved
</footer>

</body>
</html>
