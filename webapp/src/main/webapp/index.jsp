<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mayur Dalimbkar - Portfolio</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: #111;
            color: #fff;
        }

        nav {
            background: #222;
            padding: 1rem 2rem;
            position: sticky;
            top: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 1000;
        }

        nav h1 {
            color: #00e6e6;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 1.5rem;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: #00e6e6;
        }

        section {
            padding: 4rem 2rem;
            max-width: 1000px;
            margin: auto;
        }

        .hero {
            height: 90vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }

        .hero h2 {
            font-size: 2.5rem;
            color: #00e6e6;
            animation: slideIn 1.5s ease-out;
        }

        .hero p {
            font-size: 1.2rem;
            margin-top: 1rem;
        }

        .about {
            background: #1a1a1a;
            border-left: 5px solid #00e6e6;
            padding-left: 1.5rem;
            animation: fadeInUp 1s ease forwards;
        }

        .skills h2 {
            margin-bottom: 1.5rem;
        }

        .bar {
            margin-bottom: 1rem;
        }

        .bar span {
            display: block;
            margin-bottom: 0.3rem;
        }

        .bar .progress {
            background: #333;
            border-radius: 20px;
            overflow: hidden;
        }

        .bar .progress div {
            height: 15px;
            background: #00e6e6;
            width: 0;
            animation: fillBar 2s forwards;
        }

        .projects .card {
            background: #222;
            padding: 1rem;
            border-radius: 10px;
            margin: 1rem 0;
            transition: transform 0.3s;
        }

        .projects .card:hover {
            transform: scale(1.05);
        }

        .contact form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .contact input, .contact textarea {
            padding: 0.8rem;
            border: none;
            border-radius: 5px;
            background: #333;
            color: white;
        }

        .contact button {
            padding: 0.8rem;
            background: #00e6e6;
            color: black;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-weight: bold;
            transition: 0.3s;
        }

        .contact button:hover {
            background: #00cccc;
        }

        footer {
            text-align: center;
            padding: 2rem;
            background: #111;
            color: #888;
        }

        @keyframes slideIn {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from { transform: translateY(30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes fillBar {
            to { width: 90%; }
        }

        .skills .bar:nth-child(2) .progress div { animation-delay: 0.2s; width: 85%; }
        .skills .bar:nth-child(3) .progress div { animation-delay: 0.4s; width: 80%; }
        .skills .bar:nth-child(4) .progress div { animation-delay: 0.6s; width: 70%; }
    </style>
</head>
<body>

<nav>
    <h1>Mayur Dalimbkar</h1>
    <ul>
        <li><a href="#hero">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#skills">Skills</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
    </ul>
</nav>

<section class="hero" id="hero">
    <h2>👋 Hi, I'm Mayur</h2>
    <p>A passionate DevOps Engineer building modern infrastructure solutions</p>
</section>

<section class="about" id="about">
    <h2>About Me</h2>
    <p>I’m a results-driven engineer with a passion for automation, cloud technologies, and CI/CD pipelines. With a solid foundation in Azure and AWS, I thrive on solving complex infrastructure problems efficiently.</p>
</section>

<section class="skills" id="skills">
    <h2>Skills</h2>
    <div class="bar">
        <span>Terraform</span>
        <div class="progress"><div></div></div>
    </div>
    <div class="bar">
        <span>Docker & Kubernetes</span>
        <div class="progress"><div></div></div>
    </div>
    <div class="bar">
        <span>Azure & AWS</span>
        <div class="progress"><div></div></div>
    </div>
    <div class="bar">
        <span>Ansible & Jenkins</span>
        <div class="progress"><div></div></div>
    </div>
</section>

<section class="projects" id="projects">
    <h2>Projects</h2>
    <div class="card">
        <h3>CI/CD Pipeline with Jenkins & Kubernetes</h3>
        <p>Automated the deployment of microservices using Jenkins pipelines and Kubernetes clusters on AWS EKS.</p>
    </div>
    <div class="card">
        <h3>Terraform Infrastructure on Azure</h3>
        <p>Built modular Terraform scripts for provisioning VMs, VNets, and AKS with remote state in Azure Storage.</p>
    </div>
</section>

<section class="contact" id="contact">
    <h2>Contact Me</h2>
    <form method="post" action="#">
        <input type="text" name="name" placeholder="Your Name" required/>
        <input type="email" name="email" placeholder="Your Email" required/>
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</section>

<footer>
    <p>© 2025 Mayur Dalimbkar • DevOps Engineer</p>
</footer>

</body>
</html>
