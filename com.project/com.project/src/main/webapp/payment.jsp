<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.project.Payment" %>
<%@ page import="com.project.PaymentDAO" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="com.google.zxing.BarcodeFormat" %>
<%@ page import="com.google.zxing.qrcode.QRCodeWriter" %>
<%@ page import="com.google.zxing.client.j2se.MatrixToImageWriter" %>
<%@ page import="com.google.zxing.common.BitMatrix" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Details</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f6f9;
            color: #333;
        }
        .navbar {
            background-color: #3498db;
            padding: 1rem 2rem;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
            font-weight: 600;
        }
        .navbar-nav .nav-link:hover {
            color: #e74c3c !important;
        }
        .section {
            padding: 80px 0;
        }
        .section-title {
            text-align: center;
            margin-bottom: 50px;
            color: #3498db;
            font-weight: 700;
        }
        .table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        .table thead {
            background-color: #3498db;
            color: white;
        }
        .btn-primary {
            background-color: #3498db;
            border-color: #3498db;
        }
        .btn-primary:hover {
            background-color: #2980b9;
            border-color: #2980b9;
        }
        .chart-container {
            position: relative;
            margin: auto;
            height: 400px;
            width: 80%;
        }
        .popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            border-radius: 8px;
            z-index: 1000;
            color: white;
        }
        .popup .close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            color: white;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="#">EBS Payment</a>
        </div>
    </nav>

    <section id="users" class="section">
        <div class="container">
            <h2 class="section-title">Payment Details</h2>
            <form action="payment.jsp" method="get" class="form-inline mb-4">
                <div class="form-group mx-sm-3 mb-2">
                    <label for="electricId" class="sr-only">Electric ID</label>
                    <input type="text" class="form-control" id="electricId" name="electricId" placeholder="Enter Electric ID" required>
                </div>
                <button type="submit" class="btn btn-primary mb-2">Get Payment Details</button>
            </form>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Electric ID</th>
                            <th>Due</th>
                            <th>QR Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            String electricId = request.getParameter("electricId");
                            if (electricId != null && !electricId.isEmpty()) {
                                PaymentDAO paymentDAO = new PaymentDAO();
                                Payment payment = paymentDAO.getPaymentByElectricID(electricId);
                                if (payment != null) {
                        %>
                        <tr>
                            <td><%= payment.getElectricID() %></td>
                            <td><%= payment.getAmountDue() %></td>
                            <td>
                                <%
                                    String paymentInfo = "upi://pay?pa=9640318787@axl&pn=EBS Payment&am=" + payment.getAmountDue() + "&cu=INR";
                                    QRCodeWriter qrCodeWriter = new QRCodeWriter();
                                    ByteArrayOutputStream baos = new ByteArrayOutputStream();
                                    try {
                                        BitMatrix bitMatrix = qrCodeWriter.encode(paymentInfo, BarcodeFormat.QR_CODE, 200, 200);
                                        BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(bitMatrix);
                                        ImageIO.write(qrImage, "png", baos);
                                        String qrBase64 = Base64.getEncoder().encodeToString(baos.toByteArray());
                                %>
                                <img src="data:image/png;base64,<%= qrBase64 %>" alt="QR Code">
                                <% } catch (Exception e) { e.printStackTrace(); } %>
                            </td>
                        </tr>
                        <%
                                } else {
                        %>
                        <tr>
                            <td colspan="3" class="text-center">No payment details found for Electric ID: <%= electricId %>.</td>
                        </tr>
                        <%
                                }
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </section>

    <footer class="bg-dark text-white py-4">
        <div class="container text-center">
            <p>&copy; 2024 Electricity Billing System. All rights reserved.</p>
        </div>
    </footer>

    <div id="successPopup" class="popup" style="display: none; background-color: #28a745;">
        <span class="close" onclick="closePopup()">&times;</span>
        <p>Payment processed successfully!</p>
    </div>

    <!-- Failure Popup HTML -->
    <div id="failurePopup" class="popup" style="display: none; background-color: #dc3545;">
        <span class="close" onclick="closeFailurePopup()">&times;</span>
        <p>Payment failed. Please try again.</p>
    </div>

    <script>
        function showSuccessPopup() {
            document.getElementById('successPopup').style.display = 'block';
        }

        function closePopup() {
            document.getElementById('successPopup').style.display = 'none';
        }

        function showFailurePopup() {
            document.getElementById('failurePopup').style.display = 'block';
        }

        function closeFailurePopup() {
            document.getElementById('failurePopup').style.display = 'none';
        }

        // Display the success popup after 40 seconds
        setTimeout(function() {
            document.getElementById('successPopup').style.display = 'block';
        }, 10000); // 40000 milliseconds = 40 seconds
    </script>
</body>
</html>
