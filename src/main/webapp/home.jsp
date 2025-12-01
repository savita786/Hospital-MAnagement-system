<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Max Care Hospital</title>

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

        /* HERO SECTION */
        .hero {
            background: url('https://images.unsplash.com/photo-1584982751601-97dcc0962a5e') 
                        no-repeat center/cover;
            height: 420px;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
            position: relative;
        }

        .hero::after {
            content: "";
            position: absolute;
            top: 0; left: 0; right: 0; bottom: 0;
            background: rgba(0,0,0,0.45);
        }

        .hero-content {
            position: relative;
            z-index: 2;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 25px;
        }

        .hero button {
            background-color: #1aa39a;
            border: none;
            padding: 12px 28px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .hero button:hover {
            background-color: #147a74;
        }

        /* SERVICES SECTION */
        .services {
            max-width: 1100px;
            margin: 40px auto;
            padding: 0 20px;
        }

        .services h2 {
            text-align: center;
            color: #0c6c69;
            margin-bottom: 30px;
        }

        .service-box {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .service {
            background: white;
            width: 30%;
            min-width: 280px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 3px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
            text-align: center;
        }

        .service h3 {
            color: #0c6c69;
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
            <a href="Doctor.jsp">Doctors</a>
            <a href="appointment.jsp">Appointment</a>
            <a href="contact.jsp">Contact</a>
             <a href="login.jsp">Login</a>
           
        </nav>
    </header>

    <!-- HERO -->
    <div class="hero">
        <div class="hero-content">
            <h1>World-Class Healthcare</h1>
            <p>Your health is our priority. Advanced treatment & experienced professionals.</p>
            <button onclick="location.href='appointment.jsp'">Book Appointment</button>
        </div>
    </div>

    <!-- SERVICES -->
    <section class="services">
        <h2>Our Specialities</h2>

        <div class="service-box">
            <div class="service">
                <h3><a href="Cardiology.jsp">Cardiology</a></h3>
                <p>Advanced heart care with expert cardiologists.</p>
            </div>

            <div class="service">
                <h3><a href="#">Neurology</a></h3>
                <p>Brain, spinal cord & nerve system treatment.</p>
            </div>

            <div class="service">
                <h3><a href="#">Orthopedics</a></h3>
                <p>Bone, joint, and muscle injury treatments.</p>
            </div>

            <div class="service">
                <h3><a href="#">Pediatrics</a></h3>
                <p>Best child care with experienced pediatricians.</p>
            </div>

            <div class="service">
                <h3> <a href="emergency.jsp">Emergency Care</a></h3>
                <p>24/7 emergency services with modern facilities.</p>
            </div>

            <div class="service">
                <h3><a href="#">Dermatology</a></h3>
                <p>Skin and hair treatment by experts.</p>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        © 2025 Max Care Hospital | All Rights Reserved
    </footer>

</body>
</html>
