<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Max Care Hospital — Contact</title>

  <style>
    /* base */
    :root{
      --brand:#0c6c69;
      --accent:#1aa39a;
      --muted:#666;
      --bg:#f6f8fa;
      --card:#fff;
      --radius:8px;
    }
    *{box-sizing:border-box}
    body{
      margin:0;
      font-family: Arial, sans-serif;
      background-color:var(--bg);
      color:#222;
      -webkit-font-smoothing:antialiased;
    }

    /* HEADER (unchanged visual from your file) */
    header{
      background-color: var(--brand);
      color: white;
      padding: 12px 30px;
      display:flex;
      justify-content:space-between;
      align-items:center;
      box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }
    header .logo{ font-size:26px; font-weight:700; letter-spacing:1px; }
    nav a{
      text-decoration:none; color:white; margin-left:25px; font-size:16px; font-weight:700;
    }
    nav a:hover { text-decoration:underline; }

    /* HERO (kept as on original) */
    .hero {
      background: url('https://images.unsplash.com/photo-1584982751601-97dcc0962a5e') no-repeat center/cover;
      height: 260px;
      display:flex;
      justify-content:center;
      align-items:center;
      color:white;
      text-align:center;
      position:relative;
    }
    .hero::after{
      content:""; position:absolute; inset:0; background:rgba(0,0,0,0.45);
    }
    .hero-content{ position:relative; z-index:2; padding: 18px; }
    .hero h1{ font-size:32px; margin:0 0 8px; }
    .hero p{ margin:0 0 12px; font-size:15px; color: #e8f6f5; }
    .hero button{ background:var(--accent); border:0; padding:10px 18px; color:white; border-radius:5px; cursor:pointer; font-weight:700; }

    /* layout wrapper */
    .wrap{ max-width:1100px; margin:28px auto; padding:0 20px; }

    /* contact section */
    .contact-grid{
      display:grid;
      grid-template-columns: 1fr 420px;
      gap:20px;
      align-items:start;
    }

    .card{
      background:var(--card);
      border-radius:var(--radius);
      padding:18px;
      box-shadow: 0 6px 18px rgba(12,20,30,0.06);
    }

    /* left side info */
    .contact-info h2{ margin:0 0 8px; color:var(--brand); font-size:22px; }
    .contact-info p{ color:var(--muted); margin:0 0 14px; }

    .quick-grid{
      display:grid;
      grid-template-columns:repeat(2,1fr);
      gap:12px;
    }
    .quick{
      display:flex;
      gap:12px;
      align-items:center;
      padding:12px;
      border-radius:8px;
      background:linear-gradient(180deg,#fff,#fbfdff);
    }
    .quick .icon{
      width:44px;height:44;border-radius:8px;background:#f1f5f9;display:flex;align-items:center;justify-content:center;font-weight:700;color:var(--brand);
      font-size:18px;
    }
    .quick small{ display:block; color:var(--muted); font-size:13px; }
    .quick strong{ display:block; font-size:14px; }

    .pills{ margin-top:14px; display:flex; gap:10px; flex-wrap:wrap; }
    .pill{ background:#fff; padding:10px 12px; border-radius:10px; box-shadow:0 6px 14px rgba(12,20,30,0.04); font-size:14px; color:var(--brand); }

    /* right side form + map */
    .aside { display:flex; flex-direction:column; gap:14px; }
    .form h3{ margin:0 0 8px; color:var(--brand); }
    form.contact-form{ display:flex; flex-direction:column; gap:10px; }
    .row{ display:flex; gap:10px; }
    .row .field{ flex:1; display:flex; flex-direction:column; }
    label{ font-size:13px; color:var(--muted); margin-bottom:6px; }
    input, select, textarea{
      padding:10px 12px; border-radius:8px; border:1px solid #e6eef3; font-size:14px; background:white;
    }
    textarea{ min-height:110px; resize:vertical; }

    .actions{ display:flex; gap:10px; align-items:center; }
    .btn-primary{ background:var(--brand); color:white; padding:10px 14px; border-radius:8px; border:0; cursor:pointer; font-weight:700; }
    .btn-ghost{ background:transparent; border:1px solid #d1e6ef; color:var(--brand); padding:9px 12px; border-radius:8px; cursor:pointer; }

    .map{ height:200px; border-radius:8px; overflow:hidden; }

    footer{
      background-color:var(--brand);
      color:white;
      padding:20px;
      text-align:center;
      margin-top:32px;
    }

    /* responsive */
    @media (max-width:980px){
      .contact-grid{ grid-template-columns:1fr; }
      .hero{ height:200px; }
      .map{ height:180px; }
    }

    @media (max-width:520px){
      .row{ flex-direction:column; }
      .quick-grid{ grid-template-columns:1fr; }
    }
  </style>
</head>
<body>

  <!-- HEADER (kept same) -->
  <header>
    <div class="logo">Max Care Hospital</div>
    <nav>
      <a href="home.jsp">Home</a>
      <a href="#">Doctors</a>
      <a href="#">Departments</a>
      <a href="appointment.jsp">Appointment</a>
      <a href="contact.jsp">Contact</a>
    </nav>
  </header>

  <!-- HERO (kept same look) -->
  <div class="hero" role="img" aria-label="Healthcare background">
    <div class="hero-content">
      <h1>World-Class Healthcare</h1>
      <p>Your health is our priority. Advanced treatment & experienced professionals.</p>
      <button onclick="location.href='appointment.jsp'">Book Appointment</button>
    </div>
  </div>

  <!-- CONTACT LAYOUT (new) -->
  <main class="wrap" id="main">
    <section class="contact-grid" aria-labelledby="contact-title">
      <!-- left info -->
     <div class="card contact-info" role="region" aria-labelledby="contact-title">
    <h2 id="contact-title">Get in touch with us</h2>
    <p>We're available 24/7 for appointments, emergencies and patient support. Use the form to request a callback or call the numbers listed below.</p>

    <div class="quick-grid">

        <!-- Call -->
        <div class="quick">
            <div class="icon">&#9742;</div>
            <div>
                <small>Call / WhatsApp (24/7)</small>
                <strong>+91 926 888 0303</strong>
            </div>
        </div>

        <!-- Email -->
        <div class="quick">
            <div class="icon">&#9993;</div>
            <div>
                <small>Email</small>
                <strong>digitalquery@maxhealthcare.com</strong>
            </div>
        </div>

        <!-- Patient Services -->
        <div class="quick">
            <div class="icon">&#128138;</div>
            <div>
                <small>Patient services</small>
                <strong>Book appointments & consultations</strong>
            </div>
        </div>

        <!-- International -->
        <div class="quick">
            <div class="icon">&#127760;</div>
            <div>
                <small>International patients</small>
                <strong>Request a call back</strong>
            </div>
        </div>

    </div>

    <div class="pills">
        <div class="pill">
            <strong>IVRS</strong> – Press 1 emergency · 2 appointments · 5 ambulance
        </div>

        <div class="pill">
            <strong>Max@Home</strong> – Homecare & nursing: 8744 888 888
        </div>
    </div>
</div>

      <!-- right form + map -->
      <aside class="aside">
        <div class="card form" aria-labelledby="form-heading">
          <h3 id="form-heading">Request a callback</h3>

          <form id="contactForm" class="contact-form" onsubmit="return handleSubmit(event)" novalidate>
            <div class="row">
              <div class="field">
                <label for="name">Full name</label>
                <input id="name" name="name" type="text" placeholder="Your name" required />
              </div>

              <div class="field">
                <label for="phone">Phone</label>
                <input id="phone" name="phone" type="tel" placeholder="+91 9XXXXXXXXX" pattern="[0-9+ ]{7,20}" required />
              </div>
            </div>

            <div class="row">
              <div class="field">
                <label for="email">Email</label>
                <input id="email" name="email" type="email" placeholder="you@example.com" />
              </div>

              <div class="field">
                <label for="dept">Department</label>
                <select id="dept" name="department" required>
                  <option value="">Select</option>
                  <option>General enquiry</option>
                  <option>Doctor appointment</option>
                  <option>Emergency</option>
                  <option>International patients</option>
                </select>
              </div>
            </div>

            <div>
              <label for="message">Message</label>
              <textarea id="message" name="message" placeholder="Tell us how we can help (optional)"></textarea>
            </div>

            <div class="actions">
              <button type="submit" class="btn-primary">Request callback</button>
              <button type="button" class="btn-ghost" onclick="window.location.href='tel:+919268880303'">Call +91 926 888 0303</button>
            </div>

            <div style="font-size:13px;color:var(--muted);margin-top:10px">By submitting you agree to our terms & privacy policy.</div>
          </form>
        </div>

       
      </aside>
    </section>
  </main>

  <!-- FOOTER (kept same) -->
  <footer>
    © 2025 Max Care Hospital | All Rights Reserved
  </footer>

  <script>
    function handleSubmit(e){
      e.preventDefault();
      const name = document.getElementById('name').value.trim();
      const phone = document.getElementById('phone').value.trim();
      const dept = document.getElementById('dept').value;
      if(!name || !phone || !dept){
        alert('Please fill required fields: name, phone and department.');
        return false;
      }

      const payload = {
        name, phone,
        email: document.getElementById('email').value.trim(),
        department: dept,
        message: document.getElementById('message').value.trim()
      };

      // TODO: replace with actual endpoint
      // fetch('/api/contact', { method:'POST', headers:{'Content-Type':'application/json'}, body: JSON.stringify(payload) })
      //   .then(r=>r.json()).then(()=>{ alert('Thanks — we will contact you shortly'); document.getElementById('contactForm').reset(); })
      //   .catch(()=> alert('Submission failed. Please try again later.'));

      console.log('contact payload', payload);
      alert('Thanks — your request has been received. We will contact you shortly.');
      document.getElementById('contactForm').reset();
      return false;
    }
  </script>
</body>
</html>
