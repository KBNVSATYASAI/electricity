<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Electricity Bill Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #001f3f;
        color: white;
        margin: 0;
        padding: 0;
    }
    .header {
        background-color: #001f3f;
        padding: 10px;
        text-align: left;
    }
    .header h1 {
        display: inline;
        margin: 0;
    }
    .container {
        display: flex;
        justify-content: space-between;
        padding: 20px;
    }
    .left, .right {
        width: 48%;
    }
    .right {
        background-color: #004080;
        padding: 20px;
        border-radius: 10px;
    }
    .right h2 {
        margin-top: 0;
    }
    .right input[type="text"], .right input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .right input[type="submit"] {
        padding: 10px 20px;
        border: none;
        background-color: #007bff;
        color: white;
        border-radius: 5px;
        cursor: pointer;
    }
    .right input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
<script>
    window.onload = function() {
        var message = "<%= request.getAttribute("message") %>";
        if (message) {
            alert(message);
        }
    };
</script>
</head>
<body>
    <div class="header">
        <h1>Ebill</h1>    
    </div>
    <div class="container">
        <div class="left">
            <h1>Electricity Bill Management System</h1>
            <p>This website at the end of its construction will act as a consumer-oriented service for users for easy payment of their respective <strong>Electricity Bill</strong> as well as interact with their providers in case of any queries or grievances.</p>
        </div>
        <div class="right">
            <h2>User Registration</h2>
            <form action="UserRegisterServlet" method="post">
                <input type="text" name="fullname" placeholder="Full Name" required >
                <input type="text" name="ElectricityID" placeholder="Electricity ID" required>
                <input type="password" name="password" placeholder="Password" required>
                <input type="text" name="contact" placeholder="Contact No." required>
                <input type="text" name="address" placeholder="Address" required>
                <input type="submit" value="Register">
            </form>
        </div>
    </div>
</body>
</html>