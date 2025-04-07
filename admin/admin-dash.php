<?php
    include '../includes/db-connection.php';
    $result = $conn->query("SELECT * FROM blog_posts ORDER BY created_at DESC");
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard | FitZone Fitness Center</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="../public/css/header.css">
        <link rel="stylesheet" type="text/css" href="../public/css/footer.css">
        <link rel="stylesheet" type="text/css" href="./admin-dash.css">
        <script src="./personal-training.js"></script>
    </head>
    <body id="personal-training-body">
        <header>
            <nav class="navbar navbar-expand-xxl" id="navbar" style="background-color: #121212;">
              <div class="container-fluid">
                <a href="../index.php"><img src="../public/images/logo.png" class="float-start" alt="Logo" id="header-logo"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0" id="navbar-items">
                    <li class="nav-item px-4">
                      <a class="nav-link active" aria-current="page" href="../index.php">Home</a>
                    </li>
                    <li class="nav-item px-4">
                      <a class="nav-link" href="../index.php#home-section-3">Memberships</a>
                    </li>
                    <li class="nav-item px-4">
                      <a class="nav-link" href="../pages/blog.php">Blog</a>
                    </li>
                    <li class="nav-item dropdown px-4">
                      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Services</a>
                      <ul class="dropdown-menu" style="background-color: #121212;" id="about-dropdown">
                        <li><a class="dropdown-item" href="../pages/personal-training.html">Personal Training</a></li>
                        <li><a class="dropdown-item" href="../pages/group-classes.html">Group Classes</a></li>
                        <li><a class="dropdown-item" href="../pages/nutrition-counseling.html">Nutrition Counseling</a></li>
                        <li><a class="dropdown-item" href="../pages/wellness-programs.html">Wellness Programs</a></li>
                      </ul>
                    </li>
                    <li class="nav-item dropdown px-4">
                      <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">About</a>
                      <ul class="dropdown-menu" style="background-color: #121212;" id="about-dropdown">
                        <li><a class="dropdown-item" href="../pages/facilities.html">Our Facilities</a></li>
                        <li><a class="dropdown-item" href="../pages/trainers.html">Our Trainers</a></li>
                        <li><a class="dropdown-item" href="../pages/specialties.html">Our Specialties</a></li>
                        <li><a class="dropdown-item" href="../pages/rules-and-egulations.html">Our Rules and Regulations</a></li>
                      </ul>
                    </li>
                    <li class="nav-item px-4">
                      <a class="nav-link" href="../pages/contact.html">Contact</a>
                    </li>
                  </ul>
                  
                </div>
              </div>
            </nav>
        </header>
        
        <div class="manage-posts mb-5 my-5">
          <h1>Manage Blog Posts</h1>
          <a href="create-post.php" class="new-post-btn" data-bs-toggle="modal" data-bs-target="#exampleModal">+ New Blog Post</a>

          <table class="blog-table">
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Author</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <?php while($row = $result->fetch_assoc()): ?>
                <tr>
                  <td><?= $row['title'] ?></td>
                  <td><?= $row['category'] ?></td>
                  <td><?= $row['author'] ?></td>
                  <td>
                    <a class="edit-link" href="./edit-posts.php?id=<?= $row['post_id'] ?>">Edit</a> | 
                    <a class="delete-link" href="./delete-posts.php?id=<?= $row['post_id'] ?>" onclick="return confirm('Delete this post?')">Delete</a>
                  </td>
                </tr>
              <?php endwhile; ?>
            </tbody>
          </table>
        </div>

        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h2 class="signup-form-heading">Create Your Blog Post</h2>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <section class="signup-form">
                  <form action="./publish-post.php" method="post" enctype="multipart/form-data">
                    <input type="text" name="title" placeholder="Blog Title" required><br>
                    <textarea name="content" placeholder="Write content..." rows="10" required></textarea><br>
                    <select name="category">
                      <option value="Workout">Workout Types</option>
                      <option value="Nutrition">Nutrition & Diet</option>
                      <option value="Lifestyle">Wellness & Lifestyle</option>
                      <option value="Programs">Fitness Programs & Goals</option>
                      <option value="Advice">Trainer Tips & Advice</option>
                      <option value="Science">Body & Health Science</option>
                      <option value="Inspiration">Success Stories & Inspiration</option>
                      <option value="Fitness">At-Home Fitness</option>
                      <option value="Reviews">Gear & Reviews</option>
                    </select>
                    <input type="text" name="author" placeholder="Author" required><br>
                    <input type="file" name="image" required><br>
                    <button type="submit">Publish</button>
                  </form>
                  </section>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="close-btn">Close</button>
              </div>
            </div>
          </div>
        </div>

        <div id="footer">
            <footer>
              <div class="container-fluid">
                  <div class="raw">
                      <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                          <a href="../index.php"><img src="../public/images/logo.png" class="footer-logo"></a>
                          <p>FitZone Fitness Center is your ultimate fitness destination, offering top-tier equipment, expert trainers, and a 
                            supportive community. Whether you're a beginner or a pro, we’re here to help you reach your goals. 
                            💪🔥 #StrongerEveryDay</p>
                          <div>
                              <a href="https://web.facebook.com/"><img src="../public/images/facebook.png" class="social-icons"></a>
                              <a href="https://www.instagram.com/"><img src="../public/images/instagram.png" class="social-icons"></a>
                              <a href="https://x.com/"><img src="../public/images/twitter.png" class="social-icons"></a>
                              <a href="https://www.tiktok.com/"><img src="../public/images/tiktok.png" class="social-icons"></a>
                              <a href="https://www.youtube.com/"><img src="../public/images/youtube.png" class="social-icons"></a>
                          </div>
                      </div>
                      <div class="col-sm-12 col-md-3 col-lg-4 col-xl-3" id="section">
                          <h3>Quick Links <div class="underline"><span></span></div></h3>
                          <ul>
                              <li><a href="../index.php">Home</a></li>
                              <li><a href="../index.php#home-section-3">Memberships</a></li>
                              <li><a href="../pages/personal-training.html">Personal Training</a></li>
                              <li><a href="../pages/rules-and-egulations.html">Our Rules and Regulations</a></li>
                              <li><a href="../pages/contact.html">Contact Us</a></li>
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