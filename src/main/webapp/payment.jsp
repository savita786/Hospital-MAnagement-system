<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Payment Options - Max Care Hospital</title>
  <style>
    :root{ --brand:#0c6c69; --accent:#1aa39a; --muted:#666; --bg:#f6f8fa; }
    *{box-sizing:border-box}
    body{margin:0;font-family:Arial,Helvetica,sans-serif;background:var(--bg);color:#222}
    header{background:var(--brand);color:#fff;padding:12px 20px;display:flex;justify-content:space-between;align-items:center}
    header .logo{font-weight:700}
    nav a{color:#fff;text-decoration:none;margin-left:18px;font-weight:700}
    .container{max-width:900px;margin:32px auto;padding:18px}
    .card{background:#fff;border-radius:10px;padding:18px;box-shadow:0 6px 18px rgba(0,0,0,0.06);margin-bottom:18px}
    h2{color:var(--brand);margin:0 0 8px}
    p.lead{color:var(--muted);margin:0 0 12px}
    .grid{display:grid;grid-template-columns:1fr 1fr;gap:18px}
    .option{border:1px solid #e6eef3;border-radius:8px;padding:14px;display:flex;flex-direction:column;gap:8px}
    .option h3{margin:0;color:var(--brand)}
    .btn{display:inline-block;padding:10px 14px;border-radius:8px;text-decoration:none;text-align:center;cursor:pointer}
    .btn-primary{background:var(--brand);color:#fff;border:0}
    .btn-ghost{background:transparent;border:1px solid #d1e6ef;color:var(--brand)}
    /* UPI QR */
    .qr { display:flex; gap:16px; align-items:center; }
    .qr img { width:120px; height:120px; border-radius:6px; background:#fff; border:1px solid #eee; }
    /* card form */
    .card-form label{font-size:13px;color:var(--muted);display:block;margin-bottom:6px}
    .card-form input, .card-form select{width:100%;padding:10px;border-radius:8px;border:1px solid #e6eef3;margin-bottom:10px}
    .small{font-size:13px;color:#666}
    .center{ text-align:center }
    @media(max-width:820px){ .grid{grid-template-columns:1fr} .qr img{width:96px;height:96px} }
  </style>
</head>
<body>

<header>
  <div class="logo">Max Care Hospital</div>
  <nav>
    <a href="home.jsp">Home</a>
    <a href="appointment.jsp">Appointment</a>
    <a href="contact.jsp">Contact</a>
  </nav>
</header>

<div class="container">
  <div class="card">
    <h2>Complete Your Payment</h2>
    <p class="lead">Your appointment has been booked successfully. Select a payment method below.</p>
  </div>

  <div class="grid">

    <!-- UPI / PhonePe -->
    <div class="card option" aria-labelledby="upi-title">
      <h3 id="upi-title">PhonePe / UPI</h3>
      <p class="small">Pay instantly using PhonePe, Google Pay, Paytm or any UPI app. On mobile this will open the UPI app. On desktop you can scan the QR code with your app.</p>

      <div class="qr">
        <!-- Replace data-upi with your actual UPI ID (pa=) and merchant name -->
        <!-- Example UPI deep link format: upi://pay?pa=merchant@bank&pn=MaxCareHospital&am=500&cu=INR&tn=Appointment -->
        <div>
          <button class="btn btn-primary" onclick="startUpiPay()">Pay with PhonePe / UPI</button>
          <div class="small" style="margin-top:8px">OR scan QR</div>
        </div>

        <!-- Static QR image placeholder — replace with generated QR that encodes the UPI deeplink -->
        <div>
          <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACWCAIAAACVQ..." alt="UPI QR" />
          <div class="small center" style="margin-top:6px">Scan with UPI app</div>
        </div>
      </div>

      <div style="margin-top:10px" class="small">Amount: <strong>&#8377; <%= request.getAttribute("amount") != null ? request.getAttribute("amount") : "500" %></strong></div>
    </div>

    <!-- Debit / Credit Card -->
    <div class="card option" aria-labelledby="card-title">
      <h3 id="card-title">Debit / Credit Card</h3>
      <p class="small">Enter card details below. NOTE: This example posts to a test server endpoint and does NOT process real payments. Use a gateway (PhonePe Checkout / Razorpay / Stripe) for production.</p>

      <form class="card-form" method="post" action="ProcessCard">
        <!-- You can pre-fill amount/appointment id from request attributes -->
        <input type="hidden" name="appointmentId" value="<%= request.getAttribute("appointmentId") != null ? request.getAttribute("appointmentId") : "" %>" />
        <input type="hidden" name="amount" value="<%= request.getAttribute("amount") != null ? request.getAttribute("amount") : "500" %>" />

        <label for="cardName">Name on card</label>
        <input id="cardName" name="cardName" type="text" required placeholder="Full name on card" />

        <label for="cardNumber">Card number</label>
        <input id="cardNumber" name="cardNumber" type="text" inputmode="numeric" maxlength="19" required placeholder="1234 5678 9012 3456" />

        <div style="display:flex;gap:8px;">
          <div style="flex:1">
            <label for="expiry">Expiry (MM/YY)</label>
            <input id="expiry" name="expiry" type="text" maxlength="5" placeholder="MM/YY" required />
          </div>
          <div style="width:110px">
            <label for="cvv">CVV</label>
            <input id="cvv" name="cvv" type="password" maxlength="4" placeholder="123" required />
          </div>
        </div>

        <div style="display:flex;gap:8px;align-items:center;margin-top:6px">
          <button type="submit" class="btn btn-primary">Pay &#8377; <%= request.getAttribute("amount") != null ? request.getAttribute("amount") : "500" %></button>
          <button type="button" class="btn btn-ghost" onclick="location.href='home.jsp'">Cancel</button>
        </div>
      </form>
    </div>

    <!-- Pay at Hospital -->
    <div class="card option" style="grid-column:1 / -1">
      <h3>Pay at Hospital (Offline)</h3>
      <p class="small">Pay in person at the hospital billing counter when you visit. We will hold your booking for the scheduled slot.</p>

      <div style="margin-top:12px;display:flex;gap:10px;">
        <a class="btn btn-primary" href="confirmOffline.jsp">Continue & Confirm (Pay Later)</a>
        <a class="btn btn-ghost" href="home.jsp">Back to Home</a>
      </div>
    </div>
  </div>
</div>

<footer style="background:var(--brand);color:#fff;padding:16px;text-align:center">© 2025 Max Care Hospital | All Rights Reserved</footer>

<script>
  // UPI deeplink — update `pa` (payee address) and `am` with actual values
  function startUpiPay(){
    // amount from server or default
    var amount = '<%= request.getAttribute("amount") != null ? request.getAttribute("amount") : "500" %>';
    // replace with your merchant/UPI id
    var upiId = 'merchant@bank';             // <<--- set real UPI ID
    var payeeName = 'Max Care Hospital';
    var note = 'Appointment payment';
    var deepLink = 'upi://pay?pa=' + encodeURIComponent(upiId)
                 + '&pn=' + encodeURIComponent(payeeName)
                 + '&am=' + encodeURIComponent(amount)
                 + '&cu=INR' + '&tn=' + encodeURIComponent(note);

    // On mobile this should open installed UPI apps (PhonePe / GPay / etc.)
    window.location.href = deepLink;

    // If the browser prevents deep link on desktop, user can scan the QR instead
  }
</script>

</body>
</html>
