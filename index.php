<?php
    include './includes/db-connection.php';

    $sql = "SELECT * FROM blog_posts ORDER BY created_at DESC LIMIT 2";
    $result = $conn->query($sql); 
?>

<!DOCTYPE html>
<html>
    <head>
        <title>FitZone Fitness Center | Your Ultimate Fitness Destination</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="./public/css/styles.css">
        <link rel="stylesheet" type="text/css" href="./public/css/header.css">
        <link rel="stylesheet" type="text/css" href="./public/css/footer.css">
        <script src="./scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
        <script>
          function resetBMI() {
            document.getElementById("height").value = "";
            document.getElementById("weight").value = "";
            document.getElementById("bmi-result").value = "";
            document.getElementById("bmi-condition").value = "";
          }  
        </script>
    </head>
    <body>
        <header>
          <nav class="navbar navbar-expand-xxl" id="navbar" style="background-color: #121212;">
            <div class="container-fluid">
              <a href="./index.php"><img src="./public/images/logo.png" class="float-start" alt="Logo" id="header-logo"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="navbar-items">
                  <li class="nav-item px-4">
                    <a class="nav-link active" aria-current="page" href="./index.php">Home</a>
                  </li>
                  <li class="nav-item px-4">
                    <a class="nav-link" href="#home-section-3">Memberships</a>
                  </li>
                  <li class="nav-item px-4">
                    <a class="nav-link" href="./pages/blog.php">Blog</a>
                  </li>
                  <li class="nav-item dropdown px-4">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Services</a>
                    <ul class="dropdown-menu" style="background-color: #121212;" id="about-dropdown">
                      <li><a class="dropdown-item" href="./pages/personal-training.html">Personal Training</a></li>
                      <li><a class="dropdown-item" href="./pages/group-classes.html">Group Classes</a></li>
                      <li><a class="dropdown-item" href="./pages/nutrition-counseling.html">Nutrition Counseling</a></li>
                      <li><a class="dropdown-item" href="./pages/wellness-programs.html">Wellness Programs</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown px-4">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">About</a>
                    <ul class="dropdown-menu" style="background-color: #121212;" id="about-dropdown">
                      <li><a class="dropdown-item" href="./pages/facilities.html">Our Facilities</a></li>
                      <li><a class="dropdown-item" href="./pages/trainers.html">Our Trainers</a></li>
                      <li><a class="dropdown-item" href="./pages/specialties.html">Our Specialties</a></li>
                      <li><a class="dropdown-item" href="./pages/rules-and-egulations.html">Our Rules and Regulations</a></li>
                    </ul>
                  </li>
                  <li class="nav-item px-4">
                    <a class="nav-link" href="./pages/contact.html">Contact</a>
                  </li>
                </ul>
              </div>
              <button class="btn mx-4" type="button" id="join-btn" onclick="location.href='./pages/login.html'">Login</button>
            </div>
          </nav>
        </header>
        <div class="main">
          <section id="home-section-1">
            <div class="raw m-0 p-0 g-0">
              <div class="col-md-6 col-sm-12">
                <div class="home-welcome-section">
                  <h1 class="display-4">Welcome to<br> FitZone Fitness Center</h1>
                  <h4>Your journey to fitness starts here!</h4>
                  <button class="btn mx-4" type="button" id="home-join-btn" onclick="location.href='./pages/register.html'">Join Now</button>
                </div>
              </div>
              <div class="col-md-6 col-sm-12">
                <div class="home-carousel-section">
                  <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner" id="welcome-carousel-inner">
                      <div class="carousel-item active">
                        <img src="./public/images/home-carousel-img1.jpg" class="d-block" alt="home-carousel-img1" id="home-carousel-img">
                      </div>
                      <div class="carousel-item">
                        <img src="./public/images/specialty-2.jpeg" class="d-block" alt="home-carousel-img2" id="home-carousel-img">
                      </div>
                      <div class="carousel-item">
                        <img src="./public/images/home-carousel-img3.jpg" class="d-block" alt="home-carousel-img3" id="home-carousel-img">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          <section id="home-section-2">
            <div class="search-wrapper">
              <form class="search-form" action="./includes/search-results.php" method="GET">
                <input type="search" name="query" id="search-bar" placeholder="Search about Fitness Details, Trainers and Services" required>
                <button type="submit" id="search-btn">Search</button>
              </form>
            </div>
          </section>
          <section id="home-section-3">
            <div class="section-titles">
              <h3 class="display-4" id="membership-title">Membership Plans <div class="section-underline"><span></span></h3>
            </div>
            <div class="container">
              <div class="raw m-0" id="membership-plans">
                <div class="col-md-4">
                  <div class="card m-3" id="plan-bronze">
                    <h4 class="card-header">Basic Plan (Bronze) - $20/month</h5>
                    <div class="card-body">
                      <h5 class="card-title text-bg-success">Access to gym facilities (machines & weights)</h5>
                      <h5 class="card-title text-bg-success">Unlimited cardio access</h5>
                      <h5 class="card-title text-bg-success">Locker room access</h5>
                      <h5 class="card-title text-bg-success">Free WiFi</h5>
                      <h5 class="card-title text-bg-danger">No personal training</h5>
                      <h5 class="card-title text-bg-danger">No group classes</h5>
                      <p class="card-text text-bg-light"><b>Best for:</b> Beginners or casual gym-goers who want to work out independently.</p>
                    </div>
                    <div class="card-footer bg-transparent border-success text-center"><a href="#" class="btn" id="plan-subscribe-btn" data-bs-toggle="modal" data-bs-target="#paymentModal">Subscribe</a></div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card m-3" id="plan-silver">
                    <h4 class="card-header">Standard Plan (Silver) - $40/month</h5>
                      <div class="card-body">
                        <h5 class="card-title text-bg-success">Everything in Basic Plan</h5>
                        <h5 class="card-title text-bg-success">Access to all group classes (Yoga, Zumba, HIIT, etc.)</h5>
                        <h5 class="card-title text-bg-success">Monthly fitness assessment</h5>
                        <h5 class="card-title text-bg-success">1 free personal training session per month</h5>
                        <h5 class="card-title text-bg-success">Nutritional guidance</h5>
                        <h5 class="card-title text-bg-danger">No Sauna & spa access</h5>
                        <p class="card-text text-bg-light"><b>Best for:</b> Individuals looking for structured workouts and occasional trainer support.</p>
                      </div>
                      <div class="card-footer bg-transparent border-success text-center"><a href="#" class="btn" id="plan-subscribe-btn" data-bs-toggle="modal" data-bs-target="#paymentModal">Subscribe</a></div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card m-3" id="plan-gold">
                    <h4 class="card-header">Premium Plan (Gold) - $70/month</h5>
                      <div class="card-body">
                        <h5 class="card-title text-bg-success">Everything in Standard Plan</h5>
                        <h5 class="card-title text-bg-success">Unlimited personal training sessions</h5>
                        <h5 class="card-title text-bg-success">Customized diet & workout plans</h5>
                        <h5 class="card-title text-bg-success">Sauna & spa access</h5>
                        <h5 class="card-title text-bg-success">Priority booking for classes</h5>
                        <h5 class="card-title text-bg-success">Exclusive gym events & workshops</h5>
                        <p class="card-text text-bg-light"><b>Best for:</b> Serious fitness enthusiasts who want full support and premium facilities.</p>
                      </div>
                      <div class="card-footer bg-transparent border-success text-center"><a href="#" class="btn" id="plan-subscribe-btn" data-bs-toggle="modal" data-bs-target="#paymentModal">Subscribe</a></div>
                  </div>
                </div>
              </div>
              <div class="raw m-0 mb-5" id="additional-offers">
                <h3 class="display-6">Promotional Offers <div class="section-underline"><span></span></h4><br>
                <p><b>Annual Membership Discount:</b> Get 2 months free when signing up for a 1-year plan!</p>
                <p><b>Student Discount:</b> 10% off on all plans with a valid student ID.</p>
              </div>
            </div>

            <div class="modal fade" id="paymentModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">

                  <div class="modal-header">
                    <h5 class="modal-title" id="paymentModalLabel">Subscription Payment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>

                  <div class="modal-body">
                    <form>
                      <div class="mb-3">
                        <label for="plan" class="form-label">Choose Your Plan</label>
                        <select class="form-select" id="plan" required>
                          <option value="gold">Premium Plan (Gold) - $70/month</option>
                          <option value="silver">Standard Plan (Silver) - $40/month</option>
                          <option value="bronze">Basic Plan (Bronze) - $20/month</option>
                        </select>
                      </div>

                      <div class="mb-3">
                        <label for="nameOnCard" class="form-label">Name on Card</label>
                        <input type="text" class="form-control" id="nameOnCard" placeholder="John Doe" required>
                      </div>

                      <div class="mb-3">
                        <label for="cardNumber" class="form-label">Card Number</label>
                        <input type="text" class="form-control" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19" required>
                      </div>

                      <div class="row">
                        <div class="col-md-6 mb-3">
                          <label for="expiry" class="form-label">Expiry Date</label>
                          <input type="text" class="form-control" id="expiry" placeholder="MM/YY" maxlength="5" required>
                        </div>
                        <div class="col-md-6 mb-3">
                          <label for="cvv" class="form-label">CVV</label>
                          <input type="text" class="form-control" id="cvv" placeholder="123" maxlength="3" required>
                        </div>
                      </div>

                      <div class="d-grid">
                        <button type="submit" class="btn btn-success btn-block" data-bs-toggle="modal" data-bs-target="#subscribeModal">Subscribe</button>
                      </div>
                    </form>
                  </div>

                </div>
              </div>
            </div>

            <div class="modal fade" id="subscribeModal" tabindex="-1" aria-labelledby="paymentModalLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <h4>FitZone Online payment system isn't available yet. You can make you payments at the FitZone Fitness Center.</h4>
                  </div>
                </div>
              </div>
            </div>

          </section>
          <section id="home-section-4">
            <div class="section-titles">
              <h3 class="display-4">What is your BMI? <div class="section-underline"><span></span></h3>
            </div>
            <div class="bmi-calc-container">
              <div class="bmi-calc-inputs">
                <input type="number" id="height" name="height" placeholder="Height in centimeters (cm)" required>
                <input type="number" id="weight" name="weight" placeholder="Weight in kilograms (kg)" required>
              </div>
              <div class="bmi-calc-btn">
                <button type="button" onclick="calculateBMI()">Calculate BMI</button>
                <button type="button" onclick="resetBMI()">Reset</button>
              </div>
              <div class="bmi-calc-results">
                <input type="text" id="bmi-result" name="bmi-result" placeholder="BMI" readonly>
                <input type="text" id="bmi-condition" name="bmi-condition" placeholder="Condition" readonly>
              </div>
            </div>
          </section>
          <section id="home-section-5">
            <div class="row m-0 p-0 g-0">
              <!-- First Column: Recent Blog Posts -->
              <div class="col-md-6 col-sm-12">
                <div class="container d-block m-0">
                  <!-- Most Recent Blog Post 1 -->
                  <?php while ($row = $result->fetch_assoc()): ?>
                  <div class="row mt-4">
                    <a href="./pages/blog-view.php?post_id=<?= $row['post_id']; ?>" style="text-decoration: none;" id="home-posts-btn">
                      <div class="card mb-3 mx-3" style="max-width: 700px; background-color: #121212; border: 2px solid #0CC359;">
                        <div class="row">
                          <div class="col-md-4 overflow-hidden">
                            <img src="./uploads/<?= $row['image']; ?>" class="img-fluid" alt="Blog Image" style="max-width: 350px;">
                          </div>
                          <div class="col-md-8">
                            <div class="card-body">
                              <h5 class="card-title" style="color: #0CC359;"><?= $row['title']; ?></h5>
                              <p class="card-text" style="color: #FFFFFF;"><?= substr(strip_tags($row['content']), 0, 150); ?>...</p>
                              <p class="card-text" style="color: #888888;"><small><?= $row['created_at']; ?></small></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </a>
                  </div>
                  <?php endwhile; ?>
                </div>
              </div>

              <!-- Second Column: Blog Call-to-Action -->
              <div class="col-md-6 col-sm-12">
                <div class="home-blog-section">
                  <h1 class="display-4">Are you <br> new to the GYM life?</h1>
                  <h4>Worry not, We are fully prepared to guide you throughout the process. <br> We also have a dedicated blog to bring latest updates in the blink of an eye.</h4>
                  <button class="btn btn-success" type="button" id="home-blog-btn" onclick="location.href='./pages/blog.php'">Checkout Our Blog Now</button>
                </div>
              </div>
            </div>
          </section>
          <section id="testimonials">
            <div class="container">
              <div class="heading">
                <h2 class="text-center mb-4" id="testimonial-title">What Our Members Say <div class="section-underline"><span></span></h2>
              </div>

              <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <!-- Slide 1 -->
                  <div class="carousel-item active">
                    <div class="row g-3">
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"Amazing staff and top-notch equipment. My fitness journey has never been better!"</p>
                          <h5>- Alex Fernando</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"I love the group classes and how professional the trainers are."</p>
                          <h5>- Nadeesha Perera</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"The nutrition advice helped me lose 10kg in 2 months. Highly recommend!"</p>
                          <h5>- Dilan Ranasinghe</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"A friendly environment with great workout plans tailored just for me."</p>
                          <h5>- Ishara Gunawardena</h5>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Slide 2 -->
                  <div class="carousel-item">
                    <div class="row g-3">
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"The personalized training really kept me motivated and consistent."</p>
                          <h5>- Prabath Silva</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"Great value for money and super clean facilities."</p>
                          <h5>- Dilushi Karunaratne</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"I enjoy the calm yoga studio after a long work day. It’s my peace corner."</p>
                          <h5>- Ruwani Wijesekera</h5>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="testimonial-card">
                          <p>"The trainers are very knowledgeable and friendly. I feel at home here."</p>
                          <h5>- Thilina Jayasuriya</h5>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                </button>
              </div>
            </div>
          </section>
        </div>
        <div id="footer">
          <footer>
            <div class="container-fluid">
                <div class="raw">
                    <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                        <a href="./index.php"><img src="./public/images/logo.png" class="footer-logo"></a>
                        <p>FitZone Fitness Center is your ultimate fitness destination, offering top-tier equipment, expert trainers, and a 
                          supportive community. Whether you're a beginner or a pro, we’re here to help you reach your goals. 
                          💪🔥 #StrongerEveryDay</p>
                        <div>
                            <a href="https://web.facebook.com/"><img src="./public/images/facebook.png" class="social-icons"></a>
                            <a href="https://www.instagram.com/"><img src="./public/images/instagram.png" class="social-icons"></a>
                            <a href="https://x.com/"><img src="./public/images/twitter.png" class="social-icons"></a>
                            <a href="https://www.tiktok.com/"><img src="./public/images/tiktok.png" class="social-icons"></a>
                            <a href="https://www.youtube.com/"><img src="./public/images/youtube.png" class="social-icons"></a>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                        <h3>Quick Links <div class="underline"><span></span></div></h3>
                        <ul>
                            <li><a href="./index.php">Home</a></li>
                            <li><a href="#home-section-3">Memberships</a></li>
                            <li><a href="./pages/facilities.html">Our Facilities</a></li>
                            <li><a href="./pages/rules-and-egulations.html">Our Rules and Regulations</a></li>
                            <li><a href="./pages/contact.html">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                        <h3>Contact Us <div class="underline"><span></span></div></h3>
                        <p>No.100,</p>
                        <p>Bauddhaloka Temple,</p>
                        <p>Bauddhaloka Mawatha,</p>
                        <p>Kurunegala.</p><br>
                        <p class="email-id">pasanekanayake@gmail.com</p>
                        <h5>+94 711149262</h4>
                    </div>
                    <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                        <h3>Location <div class="underline"><span></span></div></h3>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1398.5848059336454!2d80.36256596971003!3d7.487851722647029!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae3398ab06be8b9%3A0x1f90e4e71e885052!2sKurunegala!5e0!3m2!1sen!2slk!4v1743409101671!5m2!1sen!2slk" width="500" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
            <hr>
            <p class="copyright">&copy; FitZone Fitness Center. All Right Reserved. Developed By <a href="https://www.linkedin.com/in/pasanekanayake/">Pasan Ekanayake</a></p>
          </footer>
        </div>
    </body>
</html>