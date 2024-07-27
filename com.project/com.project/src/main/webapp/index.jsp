<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Billing System - Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f8f9fa;
        }

        .jumbotron {
            position: relative;
            background-image: url('https://source.unsplash.com/1600x900/?technology');
            background-size: cover;
            background-position: center;
            color: #fff;
            padding: 100px 0;
            text-align: center;
            overflow: hidden;
        }

        .jumbotron::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Darker overlay for better text visibility */
            z-index: 1;
        }

        .jumbotron .container {
            position: relative;
            z-index: 2;
        }

        .jumbotron h1 {
            font-size: 4rem;
            margin-bottom: 20px;
            font-weight: 700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Text shadow for better readability */
        }

        .jumbotron p {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 1.1rem;
            border-radius: 25px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            transform: translateY(-2px); /* Slight lift effect */
        }

        .content {
            flex: 1;
            padding: 20px;
            text-align: center;
        }

        .footer {
            background-color: #343a40;
            color: #fff;
            padding: 20px 0;
            text-align: center;
            margin-top: auto;
        }

        .footer a {
            color: #ddd;
            text-decoration: none;
            margin: 0 10px;
        }

        .footer a:hover {
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-4">Welcome to the E-Billing System</h1>
            <p class="lead">Access and manage your electricity bills with ease. Please log in to get started.</p>
            <a class="btn btn-primary btn-lg" href="login.jsp" role="button">Login</a>
        </div>
    </div>

    <div class="content">
        <h2>Why Choose Us?</h2>
        <p>
            Our E-Billing System offers a convenient way to handle your electricity bills. After logging in, you will be able to view detailed billing information, track your usage, and make payments quickly and securely.
        </p>
        <p>
            For more features and benefits, please log in to your account.
        </p>
    </div>

    <footer class="footer">
        <p>&copy; 2024 E-Billing System. All rights reserved.</p>
        <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>
</body>
</html>