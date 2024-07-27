<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Billing System - Your Power Partner</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
    .section {
        padding: 60px 0;
    }
    
    .section-title {
        text-align: center;
        margin-bottom: 30px;
        font-size: 2em;
        font-weight: bold;
    }
    
    .testimonial {
        background-color: #f9f9f9;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100%; /* Ensure all cards take full height of their container */
        text-align: center;
    }
    
    .testimonial i {
        color: var(--primary-color);
    }
    
    .testimonial p {
        margin: 15px 0;
        font-style: italic;
    }
    
    .testimonial strong {
        display: block;
        margin-top: 10px;
    }
    
    .row {
        display: flex;
    }
    
    .col-md-4 {
        display: flex;
        align-items: stretch; /* Align items to stretch and fill the column height */
        margin-bottom: 20px;
    }

    
        :root {
            --primary-color: #3498db;
            --secondary-color: #2980b9;
            --accent-color: #e74c3c;
            --text-color: #333;
            --bg-color: #f4f6f9;
            --light-gray: #ecf0f1;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.8;
        }
        
        .navbar {
            background-color: var(--primary-color);
            padding: 1rem 2rem;
            transition: all 0.3s ease;
        }
        
        .navbar.scrolled {
            background-color: rgba(52, 152, 219, 0.9);
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        
        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        
        .navbar-nav .nav-link:hover {
            color: var(--accent-color) !important;
        }
        
        .navbar-toggler {
            border-color: white;
        }
        
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3e%3cpath stroke='rgba(255, 255, 255, 1)' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }
        
        .jumbotron {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color)), url('https://source.unsplash.com/1600x900/?electricity') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 200px 0;
            margin-bottom: 0;
            position: relative;
        }
        
        .jumbotron::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.4);
            z-index: 1;
        }
        
        .jumbotron .container {
            position: relative;
            z-index: 2;
        }
        
        .section {
            padding: 100px 0;
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 60px;
            color: var(--primary-color);
            font-weight: 700;
            position: relative;
            padding-bottom: 20px;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 3px;
            background-color: var(--accent-color);
        }
        
        .card {
            border: none;
            transition: transform 0.3s, box-shadow 0.3s;
            margin-bottom: 30px;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        
        .card-title {
            color: var(--primary-color);
            font-weight: 600;
        }
        
        .feature-icon {
            font-size: 3rem;
            margin-bottom: 20px;
            color: var(--accent-color);
        }
        
        .btn-primary {
            background-color: var(--primary-color);
            border-color: var(--primary-color);
            padding: 10px 25px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .btn-primary:hover {
            background-color: var(--secondary-color);
            border-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        
        .testimonial {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        
        .testimonial:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        
        .testimonial img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 20px;
            border: 3px solid var(--primary-color);
        }
        
        footer {
            background-color: #2c3e50;
            color: white;
            padding: 60px 0 30px;
        }
        
        .social-icons a {
            color: white;
            font-size: 1.5rem;
            margin-right: 15px;
            transition: color 0.3s ease;
        }
        
        .social-icons a:hover {
            color: var(--accent-color);
        }
        
        .feature-img {
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
        }
        
        .feature-img:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        
        .stat-card {
            background-color: var(--primary-color);
            color: white;
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            transition: all 0.3s ease;
        }
        
        .stat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }
        
        .stat-card i {
            font-size: 3rem;
            margin-bottom: 20px;
        }
        
        .stat-card .stat-number {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 10px;
        }
        
        .accordion .card {
            border: none;
            margin-bottom: 15px;
        }
        
        .accordion .card-header {
            background-color: var(--light-gray);
            border: none;
            padding: 0;
        }
        
        .accordion .card-header button {
            width: 100%;
            text-align: left;
            color: var(--text-color);
            font-weight: 600;
            padding: 20px;
            text-decoration: none;
        }
        
        .accordion .card-header button:hover {
            background-color: #e2e6ea;
        }
        
        .accordion .card-body {
            background-color: white;
        }
        
        .timeline {
            position: relative;
            padding: 50px 0;
        }
        
        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            width: 2px;
            height: 100%;
            background-color: var(--primary-color);
        }
        
        .timeline-item {
            margin-bottom: 50px;
            position: relative;
        }
        
        .timeline-content {
            background-color: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            position: relative;
        }
        
        .timeline-content::before {
            content: '';
            position: absolute;
            top: 20px;
            width: 20px;
            height: 20px;
            background-color: var(--primary-color);
            border-radius: 50%;
        }
        
        .timeline-item:nth-child(odd) .timeline-content::before {
            right: -40px;
        }
        
        .timeline-item:nth-child(even) .timeline-content::before {
            left: -40px;
        }
        
        .timeline-item:nth-child(even) .timeline-content {
            margin-left: 50%;
        }
        
        @media (max-width: 768px) {
            .timeline::before {
                left: 30px;
            }
            .timeline-item:nth-child(even) .timeline-content {
                margin-left: 0;
            }
            .timeline-content::before {
                left: -40px !important;
            }
        }
    </style>
</head>
<body>
   <a class="btn btn-light ml-3" href="payment.jsp">Pay Dues</a>
    <div class="jumbotron jumbotron-fluid" id="home">
        <div class="container text-center">
            <h1 class="display-4">Welcome to Electricity Billing System</h1>
            <p class="lead">Powering your life with smart, efficient, and accurate billing solutions.</p>
            <a href="#about" class="btn btn-light btn-lg mt-3">Discover More</a>
        </div>
    </div>

    
    <section id="features" class="section">
        <div class="container">
            <h2 class="section-title">Key Features</h2>
            <div class="row">
                <div class="col-md-6">
                    <div class="feature-item d-flex align-items-center mb-4">
                        <i class="fas fa-tachometer-alt feature-icon mr-3"></i>
                        <div>
                            <h4>Real-time Monitoring</h4>
                            <p>Track your energy usage in real-time and receive alerts for unusual consumption patterns.</p>
                        </div>
                    </div>
                    <div class="feature-item d-flex align-items-center mb-4">
                        <i class="fas fa-mobile-alt feature-icon mr-3"></i>
                        <div>
                            <h4>Mobile App</h4>
                            <p>Access your account, pay bills, and view usage statistics on-the-go with our user-friendly mobile app.</p>
                        </div>
                    </div>
                    <div class="feature-item d-flex align-items-center mb-4">
                        <i class="fas fa-lock feature-icon mr-3"></i>
                        <div>
                            <h4>Secure Transactions</h4>
                            <p>Rest easy knowing all your payments and personal information are protected by state-of-the-art security measures.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                </div>
            </div>
        </div>
    </section>

    <section id="stats" class="section bg-light">
        <div class="container">
            <h2 class="section-title">Our Impact</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="stat-card">
                        <i class="fas fa-users"></i>
                        <div class="stat-number">100,000+</div>
                        <div class="stat-title">Happy Customers</div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card">
                        <i class="fas fa-bolt"></i>
                        <div class="stat-number">5 Million</div>
                        <div class="stat-title">kWh Saved</div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card">
                        <i class="fas fa-globe-americas"></i>
                        <div class="stat-number">50+</div>
                        <div class="stat-title">Cities Served</div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="stat-card">
                        <i class="fas fa-star"></i>
                        <div class="stat-number">4.8/5</div>
                        <div class="stat-title">Average Rating</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="testimonials" class="section">
    <div class="container">
        <h2 class="section-title">What Our Customers Say</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="testimonial">
                    <i class="fas fa-user-circle fa-3x mb-3"></i>
                    <p>"EBS has revolutionized the way I manage my electricity bills. The accuracy and ease of use are unparalleled!"</p>
                    <strong>- Balu,Manager</strong>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <i class="fas fa-user-circle fa-3x mb-3"></i>
                    <p>"The usage tracking feature has helped our business become more energy-conscious. We've seen a significant reduction in our bills."</p>
                    <strong>- Balu,HR</strong>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial">
                    <i class="fas fa-user-circle fa-3x mb-3"></i>
                    <p>"The customer support team is always helpful and responsive. They've made managing our apartment complex's electricity a breeze!"</p>
                    <strong>- BALU,Property Manager</strong>
                </div>
            </div>
        </div>
    </div>
</section>


    <section id="faq" class="section bg-light">
        <div class="container">
            <h2 class="section-title">Frequently Asked Questions</h2>
            <div class="accordion" id="faqAccordion">
                <div class="card">
                    <div class="card-header" id="headingOne">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                How accurate is your billing system?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#faqAccordion">
                        <div class="card-body">
                            Our billing system is highly accurate, using advanced algorithms and real-time data from smart meters. We ensure that you are billed only for the electricity you actually consume.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingTwo">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                How can I pay my bill?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#faqAccordion">
                        <div class="card-body">
                            We offer multiple payment options for your convenience. You can pay online through our website or mobile app using credit/debit cards, net banking, or digital wallets. We also accept payments at our authorized collection centers.
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header" id="headingThree">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                What should I do if I notice an error in my bill?
                            </button>
                        </h2>
                    </div>
                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#faqAccordion">
                        <div class="card-body">
                            If you notice any discrepancy in your bill, please contact our customer support immediately. We have a dedicated team to handle billing queries and resolve any issues promptly.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="timeline" class="section">
        <div class="container">
            <h2 class="section-title">Our Journey</h2>
            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-content">
                        <h3>2020</h3>
                        <p>EBS was founded with a vision to revolutionize electricity billing.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <h3>2021</h3>
                        <p>Launched our mobile app, bringing convenience to thousands of users.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <h3>2022</h3>
                        <p>Expanded our services to 25 cities across the country.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <h3>2023</h3>
                        <p>Introduced AI-powered usage predictions and energy-saving recommendations.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <h3>2024</h3>
                        <p>Celebrating 100,000+ happy customers and continuing to innovate!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="about" class="section">
        <div class="container">
            <h2 class="section-title">About Us</h2>
            <div class="row align-items-center">
                <div class="col-md-6">
                    <p>At EBS, we're more than just a billing system. We're your partner in managing your energy consumption efficiently and effectively. Our state-of-the-art system combines cutting-edge technology with user-friendly interfaces to provide you with a seamless billing experience.</p>
                    <p>Founded in 2020, we've quickly grown to become a trusted partner for thousands of households and businesses across the nation. Our mission is to make electricity billing transparent, easy to understand, and hassle-free.</p>
                    <a href="#" class="btn btn-primary mt-3">Learn More About Our Journey</a>
                </div>
                <div class="col-md-6">
                </div>
            </div>
        </div>
    </section>
    

    <section id="contact" class="section bg-light">
        <div class="container">
            <h2 class="section-title">Contact Us</h2>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Your Email">
                        </div>
                        <div class="form-group">
                            <select class="form-control">
                                <option>Select a topic</option>
                                <option>Billing Query</option>
                                <option>Technical Support</option>
                                <option>Feedback</option>
                                <option>Other</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" rows="5" placeholder="Your Message"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Send Message</button>
                    </form>
                </div>
                <div class="col-md-6">
                    <h4>Get in Touch</h4>
                    <p><i class="fas fa-map-marker-alt mr-2"></i> vijayawada Andhrapradesh</p>
                    <p><i class="fas fa-phone mr-2"></i> +91 9640318787</p>
                    <p><i class="fas fa-envelope mr-2"></i>balukarna088@gmail.com</p>
                    <div class="social-icons mt-4">
                        <a href="#"><i class="fab fa-facebook"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h4>About EBS</h4>
                    <p>EBS is a leading provider of electricity billing solutions, committed to accuracy, efficiency, and customer satisfaction.</p>
                </div>
                <div class="col-md-4">
                    <h4>Quick Links</h4>
                    <ul class="list-unstyled">
                        <li><a href="#home">Home</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#services">Services</a></li>
                        <li><a href="#features">Features</a></li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <h4>Newsletter</h4>
                    <p>Stay updated with our latest news and offers.</p>
                    <form>
                        <div class="input-group mb-3">
                            <input type="email" class="form-control" placeholder="Your Email">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">Subscribe</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <hr>
            <div class="text-center">
                <p>&copy; 2024 Electricity Billing System. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    // Navbar scroll effect
    $(window).scroll(function() {
    var scrollDistance = $(window).scrollTop();
    
    $('section').each(function(i) {
        if ($(this).position().top <= scrollDistance + 100) {
            $('.navbar-nav a.active').removeClass('active');
            $('.navbar-nav a').eq(i).addClass('active');
        }
    });
});


    // Add active class to navbar items when scrolling
    $(window).scroll(function() {
        var scrollDistance = $(window).scrollTop();
        
        // Assign active class to nav links while scrolling
        $('section').each(function(i) {
            if ($(this).position().top <= scrollDistance + 100) {
                $('.navbar-nav a.active').removeClass('active');
                $('.navbar-nav a').eq(i).addClass('active');
            }
        });
    }).scroll();

    // Smooth scrolling for anchor links
    $('a[href^="#"]').on('click', function(event) {
        var target = $(this.getAttribute('href'));
        if( target.length ) {
            event.preventDefault();
            $('html, body').stop().animate({
                scrollTop: target.offset().top - 70
            }, 1000);
        }
    });

    // Close mobile menu on item click
    $('.navbar-nav>li>a').on('click', function(){
        $('.navbar-collapse').collapse('hide');
    });
</script>
</body>
</html>