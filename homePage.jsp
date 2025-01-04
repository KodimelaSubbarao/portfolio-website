<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Subbarao</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<style type="text/css">
/* Global Styles */
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  background-color: #f8f9fa;
}

h2.title {
  font-size: 2.5rem;
  color: #333;
  margin-bottom: 30px;
}

a {
  text-decoration: none;
}

section {
  padding: 60px 0;
}

/* Navbar */
.navbar {
  background-color: #ffffff;
  padding: 20px 0;
}

.navbar a.navbar-brand {
  font-size: 1.8rem;
  font-weight: bold;
  color: #007bff;
}

.navbar a.navbar-brand span {
  color: #333;
}

.navbar .navbar-nav .nav-link {
  font-size: 1.3rem;
  padding: 10px 20px;
  color: #007bff;
}

.navbar .navbar-nav .nav-link:hover {
  color: #0056b3;
}

.navbar-toggler {
  border-color: #007bff;
}

/* Home Section */
#home {
  background: linear-gradient(90deg, rgba(0, 123, 255, 1) 0%, rgba(33, 37, 41, 1) 100%);
  color: #fff;
  text-align: center;
  padding: 120px 0;
}

#home .text-1, #home .text-2, #home .text-3 {
  font-size: 2.5rem;
  font-weight: bold;
}

#home .btn {
  margin-top: 20px;
  font-size: 1.1rem;
  padding: 12px 25px;
}

/* About Section */
#about {
  background-color: #f8f9fa;
  padding: 60px 0;
}

#about .title {
  font-size: 36px;
  font-weight: bold;
  color: #343a40;
  text-transform: uppercase;
}

#about .text-primary {
  color: #007bff;
}

#about .text-secondary {
  color: #6c757d;
}

#about .lead {
  font-size: 1.25rem;
  font-weight: 300;
  color: #212529;
}

#about .about-img {
  width: 250px;
  height: 250px;
  object-fit: cover;
  border: 4px solid #fff;
  transition: transform 0.3s ease;
}

#about .about-img:hover {
  transform: scale(1.1);
  cursor: pointer;
}

#about .btn-success {
  background-color: #28a745;
  border-color: #28a745;
  font-size: 1.125rem;
  padding: 12px 25px;
  transition: background-color 0.3s ease;
}

#about .btn-success:hover {
  background-color: #218838;
  border-color: #1e7e34;
}

/* Services Section */
#services {
  background-color: #ffffff;
  padding: 60px 0;
}

#services .card {
  margin-bottom: 30px;
  box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
  border: none;
  transition: all 0.3s ease;
}

#services .card:hover {
  transform: scale(1.05);
}

#services .card-body {
  padding: 30px;
}

#services .card-title {
  font-size: 1.5rem;
  font-weight: bold;
}

#services .card-text {
  font-size: 1.1rem;
}

.fas {
  font-size: 3rem;
  color: #007bff;
}

.card-body i:hover {
  color: #0056b3;
}

/* Contact Section */
#contact {
  background-color: #f8f9fa;
  padding: 60px 0;
}

#contact .form-label {
  font-size: 1.1rem;
  font-weight: bold;
}

#contact .form-control {
  font-size: 1.1rem;
  padding: 12px 15px;
}

#contact .btn {
  font-size: 1.2rem;
  padding: 12px 30px;
  background-color: #007bff;
  color: #fff;
  border: none;
}

#contact .btn:hover {
  background-color: #0056b3;
}

/* Projects Section */
#projects {
  background-color: #f8f9fa;
  padding: 40px 0;
}

#projects .title {
  font-size: 2.5rem;
  font-weight: 700;
  margin-bottom: 30px;
}

.card {
  border-radius: 15px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  display: flex;
  flex-direction: column;
  height: 100%;
}

.card:hover {
  transform: scale(1.05);
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
}

.card-body {
  padding: 1.5rem;
  flex-grow: 1;
}

.card-title {
  font-size: 1.5rem;
  font-weight: bold;
  margin-bottom: 15px;
}

.card-text {
  font-size: 1rem;
  color: #6c757d;
  margin-bottom: 20px;
}

.card-footer {
  padding-top: 10px;
  text-align: right;
}

.card .btn {
  background-color: #007bff;
  border: none;
  color: white;
  padding: 10px 20px;
  text-transform: uppercase;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.card .btn:hover {
  background-color: #0056b3;
}

/* Make sure each card has at least the same height */
.col-md-4 {
  display: flex;
  justify-content: stretch;
}

/* Footer Styles */
#footer {
  background-color: #343a40;
  color: #f8f9fa;
  padding: 40px 0;
}

#footer h5 {
  font-size: 1.25rem;
  margin-bottom: 20px;
}

#footer ul {
  list-style-type: none;
  padding-left: 0;
}

#footer ul li {
  font-size: 1rem;
  margin-bottom: 10px;
}

#footer ul li a {
  color: #f8f9fa;
  text-decoration: none;
  transition: color 0.3s ease;
}

#footer ul li a:hover {
  color: #007bff;
}

#footer .social-icons a {
  font-size: 1.5rem;
  margin-right: 15px;
  transition: color 0.3s ease;
}

#footer .social-icons a:hover {
  color: #007bff;
}

#footer .row > .col-md-4 {
  padding: 0 15px;
}

#footer .text-center p {
  font-size: 0.875rem;
  color: #ddd;
  margin-top: 20px;
}

/* General Styling */
  #skills {
    background-color: #f4f7fa;
  }
  .title {
    font-size: 2.5rem;
    font-weight: 700;
    color: #333;
    margin-bottom: 40px;
  }
  .category-title {
    font-size: 1.6rem;
    font-weight: 600;
    color: #007bff;
    margin-bottom: 10px;
  }
  .skill-category {
    margin-bottom: 30px;
  }
  .tech-stack {
    font-size: 0.95rem;
    color: #6c757d;
  }

  /* List Styling */
  ul {
    list-style-type: none;
    padding-left: 0;
  }

  ul li {
    font-size: 1.1rem;
   
    margin-bottom: 5px;
  }

  /* Progress Bars */
  .progress-bar-container {
    margin-top: 30px;
  }

  .progress-item {
    margin-bottom: 20px;
  }

  .progress-bar {
    font-size: 1.1rem;
    font-weight: 500;
    text-align: center;
    padding: 10px;
    border-radius: 5px;
    transition: width 1s ease-in-out;
  }

  .progress-bar.bg-primary {
    background-color: #007bff;
  }

  .progress-bar.bg-success {
    background-color: #28a745;
  }

  .progress-bar.bg-info {
    background-color: #17a2b8;
  }

  .progress-bar.bg-warning {
    background-color: #ffc107;
  }

  .progress-bar.bg-danger {
    background-color: #dc3545;
  }

  .progress-bar.bg-secondary {
    background-color: #6c757d;
  }

  .progress-bar.bg-dark {
    background-color: #343a40;
  }
/* Scroll Up Button Styles */
.scroll-up-btn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  width:50px;
  background-color: #007bff;
  color: white;
  border-radius: 50%;
  padding: 10px;
  font-size: 1.5rem;
  cursor: pointer;
  display: none; /* Initially hidden */
  transition: all 0.3s ease;
}

.scroll-up-btn:hover {
  background-color: #0056b3;
}

/* Show the button when the user scrolls down */
.show {
  display: block;
}
/* Align the submit button to the center */

button[type="submit"] {
  display: inline-block;
  margin-top:10px;
  padding: 10px 20px;
  font-size: 16px;
  background-color: #007bff;
  color: #fff;
  border: none;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #0056b3;
}
/* Media Queries for Mobile Responsiveness */
@media (max-width: 991px) {
  #about .title {
    font-size: 30px;
  }

  #about .about-img {
    width: 200px;
    height: 200px;
  }

  #about .btn-success {
    width: 100%;
    padding: 14px 0;
  }

  /* Stack the cards on medium and smaller screens */
  .card {
    margin-bottom: 20px;
  }

  .card-body {
    padding: 1rem;
  }

  .card-title {
    font-size: 1.25rem;
  }

  .card-text {
    font-size: 0.9rem;
  }

  .card .btn {
    font-size: 0.875rem;
  }

  /* Stack cards on smaller screens */
  .col-md-4 {
    flex: 0 0 100%;
    max-width: 100%;
  }
}
	 #captcha-container {
            display: flex;
            align-items: center;
            gap: 10px;
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #f9f9f9;
            width: 250px;
            margin-bottom: 10px;
        }

        #captchaImage {
            height: 50px;
            border-radius: 5px;
        }

        /* Refresh icon button */
        #refreshCaptcha {
            background-color: transparent;
            border: none;
            cursor: pointer;
            font-size: 1.5em;
            color: #007bff;
        }

        #refreshCaptcha:hover {
            color: #0056b3;
        }

        /* Styling for the input field */
        #captcha {
            padding: 10px;
            font-size: 1.1em;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        /* Error message styling */
        #errorMessage {
            margin-top: 10px;
            color: red;
            font-size: 0.9em;
        }
@media (max-width: 767px) {
  #about .title {
    font-size: 26px;
  }

  #about .lead {
    font-size: 1rem;
  }

  #about .btn-success {
    width: 100%;
    padding: 14px 0;
  }

  #about .about-img {
    width: 180px;
    height: 180px;
  }

  #about h3 {
    font-size: 1.5rem;
  }

  #about h4 {
    font-size: 1.125rem;
  }

  /* For mobile screens */
  .card-body {
    padding: 1rem;
  }

  .card-title {
    font-size: 1.2rem;
    margin-bottom: 10px;
  }

  .card-text {
    font-size: 0.85rem;
    margin-bottom: 15px;
  }

  .btn-primary {
    padding: 8px 16px;
    font-size: 0.85rem;
  }

  /* Stack cards on mobile screens */
  .col-md-4 {
    flex: 0 0 100%;
    max-width: 100%;
  }
}


</style>
<style type="text/css">
#boxModel {
  display: none;
  position: fixed;
  top: 30px;
  left: 50%;
  transform: translateX(-50%);
  z-index: 1000;
  width: 80%;
  max-width: 500px;
 
}

#dialogBox {
  background: #fff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  border-radius: 8px;
  height: auto; 
  max-height: 150px;
  overflow-y: auto; 
}
.close-icon {
  position: absolute;
  top: 10px;
  right: 15px;
  font-size: 20px;
  cursor: pointer;
  color: #333;
}
   #dialogBox h2 {
      font-size: 20px;
      color: #333;
    }
.progress {
  height: 10px;
  border-radius: 5px;
}

</style>
</head>
<body>


 <!-- Scroll Up Button -->
<!--  
  <div class="scroll-up-btn">
    <i class="fas fa-angle-up"></i>
  </div> -->

  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <a class="navbar-brand" href="#">Subbarao<span>.com</span></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
          <li class="nav-item"><a class="nav-link" href="#about">About</a></li>
          <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
          <li class="nav-item"><a class="nav-link" href="#skills">Skills</a></li>
          <li class="nav-item"><a class="nav-link" href="#projects">Projects</a></li>
          <li class="nav-item"><a class="nav-link" href="#contact">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Home Section -->
  <section id="home" class="text-center py-5">
    <div class="container">
      <div class="home-content">
        <div class="text-1">Hello, This is</div>
        <div class="text-2">Kodimela Subbarao</div>
        <div class="text-3">And I'm a <span class="typing"></span></div>
        <a href="#contact" class="btn btn-primary">Hire me</a>
      <!--  <a href="mailto:subbarao.analogics@gmail.com" class="btn btn-primary">Hire me</a> -->
       
      </div>
    </div>
  </section>

  <!-- About Section -->
 <section id="about" class="py-5 bg-light">
  <div class="container">
    <h2 class="title text-center mb-4">About Me</h2>
    <div class="row align-items-center">
      <div class="col-lg-6 col-md-12 mb-4 mb-lg-0">
        <img src="images/SubbaraoPhoto.png" alt="Profile" class="img-fluid rounded-circle shadow-lg">
      </div>
      <div class="col-lg-6 col-md-12">
        <h3 class="text-primary">Hello, I'm Kodimela Subbarao</h3>
        <p class="lead">A passionate Software Developer with a B.Tech in Computer Science Engineering (CSE). I specialize in creating efficient and scalable software solutions.</p>
        <p>Currently, I am seeking an entry-level opportunity with an esteemed organization where I can utilize my skills and enhance my learning in the field of software development.</p>
        <h4 class="text-secondary">Why Work With Me?</h4>
        <p>I'm a great communicator and I enjoy investing time to fully understand the customer's problem to deliver the best possible solution. I'm highly motivated to work in a collaborative environment, and I'm always eager to learn new technologies.</p>
        <a href="downloadMyCV"  class="btn btn-success btn-lg mt-3">Download CV</a>
      </div>
    </div>
  </div>
</section>


 <!-- Services Section -->
    <section id="services" class="py-5">
        <div class="container">
            <h2 class="title text-center">My Services</h2>
            <div class="row">
                <!-- Web Design -->
                <div class="col-md-4 mt-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-laptop-code fa-3x"></i>
                            <h5 class="card-title">Web Design</h5>
                            <p class="card-text">Your Next Web Developer, working in Shopify Dropshipping Stores and Custom code design.</p>
                        </div>
                    </div>
                </div>
                <!-- Backend Development -->
                <div class="col-md-4 mt-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-server fa-3x"></i>
                            <h5 class="card-title">Backend Development</h5>
                            <p class="card-text">Building robust and scalable server-side applications with Java, Spring, and Hibernate to ensure seamless functionality.</p>
                        </div>
                    </div>
                </div>
                <!-- API Development -->
                <div class="col-md-4 mt-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-cogs fa-3x"></i>
                            <h5 class="card-title">API Development</h5>
                            <p class="card-text">Creating RESTful APIs using Java and Spring Boot, ensuring easy integration and high performance for client applications.</p>
                        </div>
                    </div>
                </div>
                <!-- Database Design -->
                <div class="col-md-4 mt-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-database fa-3x"></i>
                            <h5 class="card-title">Database Design</h5>
                            <p class="card-text">Designing efficient, normalized databases with PostgreSQL to ensure data integrity and smooth data handling.</p>
                        </div>
                    </div>
                </div>
                <!-- Full-stack Development -->
                <div class="col-md-4 mt-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <i class="fas fa-layer-group fa-3x"></i>
                            <h5 class="card-title">Full-stack Development</h5>
                            <p class="card-text">Specializing in both front-end and back-end development, offering end-to-end solutions for your web applications using modern technologies.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    

<!-- Skills Section -->
<section id="skills" class="py-5 bg-light">
  <div class="container">
    <h2 class="title text-center mb-5">My Skills</h2>
    <div class="row">
      <div class="col-md-6">
        <div class="skill-category">
          <h4 class="category-title">INTERNSHIP</h4>
          <ul class="list-unstyled">
          
            <li><strong>Company Name:</strong> Exposys DataLabs</li>   
            <li><strong>Internship:</strong> E_Commerce WebSite</li>
            <li><span class="tech-stack">(HTML, CSS, JS,Bootstrap)</span></li>        
          </ul>
        </div>
        
        <div class="skill-category">
          <h4 class="category-title">PROJECTS</h4>
          <ul class="list-unstyled">
            <li><strong>Project:</strong> Agriculture Waste Management</li>
            <li><span class="tech-stack">(Java, Java-Technologies, SQL, HTML, CSS, JS,Bootstrap)</span></li>
            <li><strong>Project:</strong> Leaf Disease Detection and Recognition</li>
            <li><span class="tech-stack">(Python, HTML, CSS, JS)</span></li>
          </ul>
        </div>

        <div class="skill-category">
          <h4 class="category-title">DEVELOPMENT SKILLS</h4>
          <p>Proficient in Java, Java Technologies, SQL, HTML, CSS, JavaScript and Spring.</p>
        </div>
      </div>

      <div class="col-md-6">
        <div class="progress-bar-container">
          <div class="progress-item" >
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-primary" style="width: 80%">Java - 80%</div>
            </div>
          </div>
          
          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-success" style="width: 80%">HTML - 80%</div>
            </div>
          </div>

          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-info" style="width: 70%">Java Technologies - 70%</div>
            </div>
          </div>

          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-warning" style="width: 70%">SQL - 70%</div>
            </div>
          </div>

          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-danger" style="width: 60%">Spring - 60%</div>
            </div>
          </div>

          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-secondary" style="width: 60%">CSS - 60%</div>
            </div>
          </div>
          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar bg-dark" style="width: 60%">JavaScript - 60%</div>
            </div>
          </div>
          <div class="progress-item">
            <div class="progress" style="height: 25px;">
              <div class="progress-bar" style="width: 40%;background-color: #FA8072;">Bootstrap - 40%</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Projects Section -->
<section id="projects" class="py-5 bg-light">
  <div class="container">
    <h2 class="title text-center mb-5">My Projects</h2>
    <div class="row">
      <!-- Project 1: Agriculture Waste Management -->
      <div class="col-md-4 mb-4">
        <div class="card shadow-lg border-0 rounded">
          <img src="images/Agriculture.png" style="height: 250px;" class="card-img-top img-fluid" alt="Agriculture Waste Management">
          <div class="card-body">
            <h5 class="card-title">Agriculture Waste Management</h5>
            <p class="card-text">A project aimed at utilizing technology to help manage agricultural waste. Built with Java, HTML, CSS, JavaScript, SQL, and other Java technologies. This system helps optimize waste management in agriculture.</p>
           <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#projectModalAgriculture">View Project</a>
          </div>
        </div>
      </div>

      <!-- Project 2: Leaf Disease Detection and Recognition -->
      <div class="col-md-4 mb-4">
        <div class="card shadow-lg border-0 rounded">
          <img src="images/LeafImage.jpg" style="height: 250px;" class="card-img-top img-fluid" alt="Leaf Disease Detection">
          <div class="card-body">
            <h5 class="card-title">Leaf Disease Detection and Recognition</h5>
            <p class="card-text">A machine learning-based project using Python and Convolutional Neural Networks (CNN) to identify and classify plant diseases from images of leaves. Built with Python, HTML, CSS, and JavaScript.</p>
           <!--  <a href="#" class="btn btn-primary">View Project</a> -->
           <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#projectModalLeafDisease">View Project</a>
          </div>
          
        </div>
      </div>

      <!-- Project 3: Portfolio Website -->
      <div class="col-md-4 mb-4">
        <div class="card shadow-lg border-0 rounded">
          <img src="images/portfolio-image.jpg" style="height: 250px;" class="card-img-top img-fluid" alt="Portfolio Website">
          <div class="card-body">
            <h5 class="card-title">Portfolio Website</h5>
            <p class="card-text">A personal portfolio built to showcase my skills, projects, and achievements. This project uses Java, Spring, HTML, CSS, JavaScript, Bootstrap, and SQL.</p>
           <br><br> <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#projectModalPortfolio">View Project</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Modal Structure -->
<div class="modal fade" id="projectModalAgriculture" tabindex="-1" aria-labelledby="projectModalLabelAgriculture" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="projectModalLabelAgriculture">Agriculture Waste Management</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img src="images/Agriculture.png" class="img-fluid mb-3" alt="Agriculture Waste Management">
        <p><strong>Overview:</strong> A project aimed at utilizing technology to help manage agricultural waste. Built with Java, HTML, CSS, JavaScript, SQL, and other Java technologies.</p>
        <p><strong>Technologies Used:</strong> Java, HTML, CSS, JavaScript, SQL</p>
        <p><strong>Features:</strong></p>
        <ul>
          <li>Real-time waste tracking and optimization</li>
          <li>Automated reporting system</li>
          <li>Integration with IoT devices</li>
        </ul>
        <p><strong>Challenges & Solutions:</strong> Ensuring compatibility with IoT devices was challenging but resolved by using standard protocols like MQTT.</p>
        <p><strong>Outcome:</strong> Reduced agricultural waste by 30% in pilot projects.</p>
        <a href="https://github.com/KodimelaSubbarao/AgricultureWasteManagement-Project" target="_blank" class="btn btn-primary">View Source Code</a>
      </div>
    </div>
  </div>
</div>
<!-- Modal Structure -->
<div class="modal fade" id="projectModalLeafDisease" tabindex="-1" aria-labelledby="projectModalLabelLeafDisease" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="projectModalLabelLeafDisease">Leaf Disease Detection and Recognition</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img src="images/LeafImage.jpg" class="img-fluid mb-3" alt="Leaf Disease Detection">
        <p><strong>Overview:</strong> A machine learning-based project that identifies and classifies plant diseases from leaf images. It leverages Convolutional Neural Networks (CNN) for accurate detection and recognition.</p>
        <p><strong>Technologies Used:</strong> Python, TensorFlow, Keras, HTML, CSS, JavaScript</p>
        <p><strong>Features:</strong></p>
        <ul>
          <li>Image preprocessing and augmentation</li>
          <li>Automated disease classification using CNN models</li>
          <li>Interactive web interface for uploading and analyzing images</li>
        </ul>
        <p><strong>Challenges & Solutions:</strong> Achieving high accuracy on diverse datasets was a challenge, solved by using transfer learning with pre-trained models like ResNet.</p>
        <p><strong>Outcome:</strong> Achieved a 92% accuracy rate on test data and enabled early disease detection to prevent crop loss.</p>
        <a href="https://github.com/KodimelaSubbarao/Leaf-Disease-Detection-and-Recognition" target="_blank" class="btn btn-primary">View Source Code</a>
      </div>
    </div>
  </div>
</div>
<!-- Modal Structure -->
<div class="modal fade" id="projectModalPortfolio" tabindex="-1" aria-labelledby="projectModalLabelPortfolio" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="projectModalLabelPortfolio">Portfolio Website</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img src="images/portfolio-image.jpg" class="img-fluid mb-3" alt="Portfolio Website">
        <p><strong>Overview:</strong> A personal portfolio showcasing my skills, projects, and achievements. Designed to provide a clean and modern interface for potential employers or collaborators.</p>
        <p><strong>Technologies Used:</strong> Java, Spring Boot, HTML, CSS, JavaScript, Bootstrap, SQL</p>
        <p><strong>Features:</strong></p>
        <ul>
          <li>Dynamic content loading for projects, skills, and experiences</li>
          <li>Responsive design optimized for all devices</li>
          <li>Contact form with email integration</li>
        </ul>
        <p><strong>Challenges & Solutions:</strong> Implementing responsiveness across multiple device types was resolved using Bootstrap’s grid system and media queries.</p>
        <p><strong>Outcome:</strong> Successfully developed a professional online presence and received positive feedback for the design and content.</p>
        <a href="https://github.com/KodimelaSubbarao/portfolio-website" target="_blank" class="btn btn-primary">View Source Code</a>
      </div>
    </div>
  </div>
</div>
  <!-- Contact Section -->
  <!--       <div class="form-group mb-2">
        <label for="email" class="form-label">Your Email</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" required>
      </div> -->
      <!-- <div class="form-group mb-2">
        <label for="phone" class="form-label">Phone Number</label>
        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number">
      </div> -->
      
  <section id="contact" class="py-5 bg-light">
  <div class="container">
    <h2 class="title text-center">Contact Me</h2>
    <form id="contactForm" action="submit-contact" method="POST" enctype="multipart/form-data">
      <div class="form-group mb-2">
        <label for="name" class="form-label">Your Name</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
      </div>

	<div class="form-group mb-2">
	    <label for="email" class="form-label">Your Email</label>
	    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" 
	           required oninput="validateEmail()">
	    <small id="emailHelp" class="form-text text-muted">Enter a valid email address (e.g., user@example.com).</small>
	    <div id="emailError" class="text-danger" style="display:none;"></div>
	</div>
	     <div class="form-group mb-2">
	    <label for="phone" class="form-label">Phone Number</label>
	    <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number"
	           required
	           oninput="validatePhoneNumber()">
	    <small id="phoneHelp" class="form-text text-muted">Enter a valid 10-digit phone number (starting with 6, 7, 8, or 9).</small>
	    <div id="phoneError" class="text-danger" style="display:none;"></div>
	</div>
      
      <div class="form-group mb-2">
        <label for="message" class="form-label">Your Message</label>
        <textarea class="form-control" id="message" name="message" rows="4" required></textarea>
      </div>
      <div class="form-group mb-2">
        <label for="subject" class="form-label">Subject</label>
        <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter subject">
      </div>
      <div class="form-group mb-2" >
        <label for="file" class="form-label">Upload File (optional)</label>
        <input type="file" class="form-control" id="file" name="file">
      </div>
   
       <div class="form-group mb-2" >
       		<label for="captcha"  class="form-label">Captcha</label>
       		<div id="captcha-container">
       		 	<img src="captcha" alt="CAPTCHA" id="captchaImage" />
       			 <button type="button" id="refreshCaptcha"> <i class="fas fa-sync-alt"></i></button>
      		 </div>
      		 <input type="text" class="form-control"  id="captcha" name="captcha" required /> 
      		  <div id="errorMessage" style="color: red;"></div>       
        </div>
      <div class="form-group text-center">
        <button type="submit" class="btn btn-primary">Send Message</button>
      </div>
    </form>
  </div>
</section>
     
	
<!-- Footer Section -->
<footer id="footer" class="bg-dark text-light py-5">
  <div class="container">
    <div class="row">
      <!-- Contact Info Section  -->
      <div class="col-md-4 mb-4" style="display: inline-block; ">
        <h5 class="text-uppercase">Contact</h5>
        <ul class="list-unstyled">
          <li><i class="fas fa-map-marker-alt"></i> Road No.6, Nacharam, Hyderabad,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Telangana, Pincode: 500076
          </li>
          <li><i class="fas fa-phone-alt"></i><a href="tel:+919347852344" style="color: white;" target="_blank"> +91 9347 852344</a></li>
          <!--  onclick="window.open('your WS URL'); -->
          <li><i class="fas fa-envelope"></i><a href="mailto:kodimelasubbarao2@email.com" style="color: white;" target="_blank"> kodimelasubbarao2@email.com </a></li>
        </ul>
      </div>

      <!-- Quick Links Section -->
      <div class="col-md-4 mb-4"  style="display: inline-block; ">
        <h5 class="text-uppercase">Quick Links</h5>
        <ul class="list-unstyled">
          <li><a href="home" class="text-light">Home</a></li>
          <li><a href="#about" class="text-light">About Me</a></li>
          <li><a href="#projects" class="text-light">Projects</a></li>
          <li><a href="#skills" class="text-light">Skills</a></li>          
        </ul>
      </div>

      <!-- Social Media Section -->
      <div class="col-md-4 mb-4"  style="display: inline-block; ">
        <h5 class="text-uppercase">Follow Me</h5>
        <ul class="list-unstyled">
        	<li><a href="https://www.facebook.com/kodimela.rao.9" target="_blank" class="text-light mr-3"><i class="fab fa-facebook"></i> FaceBook</a></li>
        	<li><a href="https://x.com/subbu_kodimela" target="_blank" class="text-light mr-3"><i class="fab fa-twitter"></i> Twitter</a></li>
        	<li><a href="https://www.linkedin.com/in/ksubbarao9121/" target="_blank" class="text-light mr-3"><i class="fab fa-linkedin"></i> Linkedin</a></li>
        	<li><a href="https://github.com/KodimelaSubbarao" target="_blank" class="text-light mr-3"><i class="fab fa-github"></i> Github</a></li>              
        </ul>
      </div>
    </div>
    
    <div class="row ">
      <div class="col-11 text-center">
        <p class="mb-0">© 2024 Kodimela Subbarao . All rights reserved.</p>
      </div>
      <div class="col-1 text-center">
	      <!-- Scroll Up Button -->
		  <div class="scroll-up-btn">
		    <i class="fas fa-angle-up"></i>
		  </div>
	</div>
    </div>
  </div>  
</footer>

  
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
  
<script type="text/javascript">
//Get the scroll-up button element
const scrollUpBtn = document.querySelector('.scroll-up-btn');

// When the user scrolls down 100px from the top of the document, show the button
window.onscroll = function() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    scrollUpBtn.classList.add('show');
  } else {
    scrollUpBtn.classList.remove('show');
  }
};

// When the user clicks on the button, scroll to the top of the page
scrollUpBtn.onclick = function() {
  window.scrollTo({
    top: 0,
    behavior: 'smooth'
  });
};
function validatePhoneNumber() {
    const phoneInput = document.getElementById('phone');
    const phoneError = document.getElementById('phoneError');
    const phonePattern = /^[6-9]\d{9}$/;
    
    if (phoneInput.value.match(phonePattern)) {
        // If valid, remove any error message
        phoneError.style.display = 'none';
        phoneInput.setCustomValidity('');
    } else {
        // If invalid, show error message
        phoneError.style.display = 'block';
        phoneError.textContent = 'Phone number must be 10 digits, starting with a digit between 6 and 9.';
        phoneInput.setCustomValidity('Invalid phone number');
    }
}
function validateEmail() {
    const emailInput = document.getElementById('email');
    const emailError = document.getElementById('emailError');
    const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if (emailInput.value.match(emailPattern)) {
        // If valid, remove any error message
        emailError.style.display = 'none';
        emailInput.setCustomValidity('');
    } else {
        // If invalid, show error message
        emailError.style.display = 'block';
        emailError.textContent = 'Please enter a valid email address.';
        emailInput.setCustomValidity('Invalid email address');
    }
}

function refreshCaptcha() {
    var captchaImage = document.getElementById('captchaImage');
    captchaImage.src = 'captcha?' + new Date().getTime();
    captchaImage.alt = "Loading...";
}

$('#refreshCaptcha').click(function() {
    refreshCaptcha();
    $('#errorMessage').text(''); 
});
$('#contactForm').submit(function(e) {
    e.preventDefault();

    var userCaptcha = $('#captcha').val();
    $.ajax({
        url: 'validateCaptcha',
        method: 'POST',
        data: { captcha: userCaptcha },
        success: function(response) {
            if (response) {
                $('#errorMessage').text('');
                $('#contactForm')[0].submit();
            } else {
                $('#errorMessage').text('Invalid CAPTCHA. Please try again.');
                refreshCaptcha();
            }
        },
        error: function() {
            $('#errorMessage').text('An error occurred. Please try again later.');
        }
    });

});
</script>
 <script>
 let timerDuration = 60; 
 let interval;
 let remainingTime = timerDuration;

 function showDialog(colorClass) {
   $("#progress1").removeClass("bg-success bg-danger").addClass(colorClass);
   $("#boxModel").fadeIn(); 
   startTimer();

   $("#dialogBox").hover(pauseTimer, startTimer);
 }

 function startTimer() {
   interval = setInterval(() => {
     if (remainingTime > 0) {
       remainingTime--;
       let progressPercent = (remainingTime / timerDuration) * 100;
       $("#progress1").css("width", progressPercent + "%").attr("aria-valuenow", progressPercent);
     } else {
       console.log("Timer ended.");
       clearInterval(interval);
       closeDialog();
     }
   }, 500); 
 }

 function pauseTimer() {
   clearInterval(interval);
 }

 function closeDialog() {
   $("#boxModel").fadeOut();
   clearInterval(interval);
   remainingTime = timerDuration;
 }

 $(document).ready(function () {
   <% 
     String msg = (String) session.getAttribute("message");
     String error = (String) session.getAttribute("errorMessage");
     if (msg != null) {
   %>
       const element = document.getElementById("dialogBoxMessage");
       element.innerHTML = "<%= msg %>";
       setTimeout(() => showDialog("bg-success"), 500);
       <% session.removeAttribute("message"); %>
   <% 
     }
     if (error != null) {
   %>
       const element = document.getElementById("dialogBoxMessage");
       element.innerHTML = "<%= error %>";
       /* setTimeout(showDialog, 500); */
        setTimeout(() => showDialog("bg-danger"), 500);
       <% session.removeAttribute("errorMessage"); %>
   <% } %>
 });

</script>
<div id="boxModel">
  <div id="dialogBox" class="card">
    <span class="close-icon" onclick="closeDialog()">&times;</span>
    <div class="card-body">
      <h2 class="card-title" id="dialogBoxMessage"></h2>
      <div id="progressBar1" class="progress mt-3">
        <div id="progress1" class="progress-bar" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
      </div>
    </div>
  </div>
</div>


</body>
</html>


<!--  <label for="captcha">Enter CAPTCHA:</label>
        <br>
        <img src="/captcha" alt="CAPTCHA" id="captchaImage" /><button type="button" id="refreshCaptcha">Refresh CAPTCHA</button>
        <input type="text" id="captcha" name="captcha" required />        
        <br> -->
         <!--  <div class="form-group mb-2">
        <label for="captcha"  class="form-label">Captcha</label>
        <input type="text" class="form-control" id="captcha" name="captcha" placeholder="Enter captcha" required>
      </div> -->
<!--   <section id="contact" class="py-5 bg-light">
    <div class="container">
      <h2 class="title text-center">Contact Me</h2>
      <form>
        <div class="mb-3">
          <label for="name" class="form-label">Your Name</label>
          <input type="text" class="form-control" id="name" placeholder="Your Name">
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Your Email</label>
          <input type="email" class="form-control" id="email" placeholder="Your Email">
        </div>
        <div class="mb-3">
          <label for="message" class="form-label">Your Message</label>
          <textarea class="form-control" id="message" rows="3" placeholder="Your Message"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Send Message</button>
      </form>
    </div>
  </section> -->
