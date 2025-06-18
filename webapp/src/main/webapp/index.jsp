<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mayur Dalimbkar - DevOps Portfolio</title>
    <style>
        :root {
            --primary: #00e6e6;
            --bg-dark: #0d0d0d;
            --glass: rgba(255, 255, 255, 0.05);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            background: var(--bg-dark);
            color: white;
            font-family: 'Segoe UI', sans-serif;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
            background: var(--glass);
            backdrop-filter: blur(10px);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid #222;
        }

        nav h1 {
            color: var(--primary);
            font-size: 1.5rem;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 1.2rem;
        }

        nav ul li a {
            text-decoration: none;
            color: white;
            font-weight: 500;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: var(--primary);
        }

        section {
            padding: 4rem 2rem;
            max-width: 1100px;
            margin: auto;
        }

        .hero {
            text-align: center;
            padding: 6rem 1rem;
            animation: fadeIn 1s ease;
        }

        .hero h2 {
            font-size: 3rem;
            color: var(--primary);
        }

        .hero p {
            margin-top: 1rem;
            font-size: 1.2rem;
            color: #ccc;
        }

        .glass-card {
            background: var(--glass);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            border: 1px solid #222;
            margin-bottom: 2rem;
            backdrop-filter: blur(12px);
            transition: transform 0.3s ease;
        }

        .glass-card:hover {
            transform: scale(1.02);
        }

        h2 {
            margin-bottom: 1.5rem;
            font-size: 2rem;
            color: var(--primary);
        }

        .skills .bar {
            margin-bottom: 1rem;
        }

        .skills .bar span {
            display: block;
            margin-bottom: 0.4rem;
        }

        .skills .progress {
            background: #333;
            border-radius: 50px;
            overflow: hidden;
        }

        .skills .progress div {
            height: 14px;
            background: var(--primary);
            width: 0;
            animation: grow 2s forwards;
            border-radius: 50px;
        }

        .contact form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }

        .contact input,
        .contact textarea {
            background: #222;
            border: none;
            padding: 1rem;
            color: white;
            border-radius: 10px;
        }

        .contact button {
            background: var(--primary);
            color: #000;
            padding: 0.8rem 1.2rem;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .contact button:hover {
            background: #00cccc;
        }

        footer {
            text-align: center;
            padding: 2rem;
            font-size: 0.9rem;
            color: #aaa;
            background: #0d0d0d;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes grow {
            to { width: 90%; }
        }

        .skills .bar:nth-child(2) .progress div { animation-delay: 0.2s; width: 85%; }
        .skills .bar:nth-child(3) .progress div { animation-delay: 0.4s; width: 80%; }
        .skills .bar:nth-child(4) .progress div { animation-delay: 0.6s; width: 70%; }

        @media screen and (max-width: 768px) {
            nav ul {
                flex-direction: column;
                gap: 0.8rem;
            }
            .hero h2 {
                font-size: 2.2rem;
            }
        }
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
    <h2>🚀 DevOps Engineer</h2>
    <p>Crafting scalable, automated, and resilient infrastructure</p>
</section>

<section id="about" class="glass-card">
    <h2>About Me</h2>
    <p>Hi, I’m Mayur — passionate about automation, cloud, and delivery pipelines. With solid experience in Azure, AWS, and DevOps tools, I help build high-performance infrastructure with a focus on security and scalability.</p>
</section>

<section class="skills glass-card" id="skills">
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
    <div class="glass-card">
        <h2>Projects</h2>
        <div>
            <h3>🌐 CI/CD with Jenkins & Kubernetes</h3>
            <p>Built automated pipelines for microservices using Jenkins, Docker, and Kubernetes across cloud platforms.</p>
        </div>
        <br>
        <div>
            <h3>☁️ Infra Provisioning with Terraform</h3>
            <p>Designed reusable Terraform modules to provision Azure and AWS resources with state stored remotely.</p>
        </div>
    </div>
</section>

<section class="contact glass-card" id="contact">
    <h2>Contact Me</h2>
    <form method="post" action="#">
        <input type="text" name="name" placeholder="Your Name" required/>
        <input type="email" name="email" placeholder="Your Email" required/>
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</section>

<footer>
    <p>© 2025 Mayur Dalimbkar | DevOps Engineer | All rights reserved.</p>
</footer>

</body>
</html>
