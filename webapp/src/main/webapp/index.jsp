<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Mayur Dalimbkar - Portfolio</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #fff;
    }

    header {
      padding: 2rem;
      display: flex;
      justify-content: space-between;
      align-items: center;
      background: rgba(0, 0, 0, 0.3);
    }

    header h1 {
      font-size: 2rem;
      color: #00ffff;
    }

    nav a {
      color: #ccc;
      margin-left: 2rem;
      text-decoration: none;
      transition: color 0.3s;
    }

    nav a:hover {
      color: #00ffff;
    }

    .hero {
      height: 90vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      flex-direction: column;
      padding: 2rem;
    }

    .hero h2 {
      font-size: 3rem;
      margin-bottom: 1rem;
    }

    .hero p {
      font-size: 1.2rem;
      color: #ccc;
    }

    .hero button {
      margin-top: 2rem;
      padding: 0.8rem 2rem;
      background: #00ffff;
      border: none;
      border-radius: 25px;
      font-size: 1rem;
      cursor: pointer;
      color: #000;
      transition: background 0.3s ease;
    }

    .hero button:hover {
      background: #00cccc;
    }

    section {
      padding: 4rem 2rem;
      text-align: center;
    }

    section h3 {
      font-size: 2rem;
      margin-bottom: 1.5rem;
      color: #00ffff;
    }

    .cards {
      display: flex;
      flex-wrap: wrap;
      gap: 2rem;
      justify-content: center;
    }

    .card {
      background: rgba(255, 255, 255, 0.1);
      padding: 2rem;
      border-radius: 15px;
      width: 280px;
      backdrop-filter: blur(10px);
      box-shadow: 0 0 20px rgba(0, 255, 255, 0.3);
      transition: transform 0.3s;
    }

    .card:hover {
      transform: translateY(-10px);
    }

    footer {
      text-align: center;
      padding: 2rem;
      background: rgba(0, 0, 0, 0.4);
      color: #888;
    }
  </style>
</head>
<body>
  <header>
    <h1>Mayur Dalimbkar</h1>
    <nav>
      <a href="#about">About</a>
      <a href="#skills">Skills</a>
      <a href="#projects">Projects</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <div class="hero">
    <h2>Hi, I’m Mayur 👋</h2>
    <p>I’m a DevOps Engineer & 3D Developer building immersive experiences.</p>
    <button>View My Work</button>
  </div>

  <section id="about">
    <h3>About Me</h3>
    <p>I specialize in creating stunning, responsive websites with a strong focus on user experience and performance. I’m also passionate about automation and cloud infrastructure.</p>
  </section>

  <section id="skills">
    <h3>Skills</h3>
    <div class="cards">
      <div class="card">HTML, CSS, JavaScript</div>
      <div class="card">DevOps: Jenkins, Docker, Kubernetes</div>
      <div class="card">Cloud: AWS, Azure</div>
      <div class="card">Infra-as-Code: Terraform, Ansible</div>
    </div>
  </section>

  <section id="projects">
    <h3>Projects</h3>
    <div class="cards">
      <div class="card">DevOps Automation Toolkit</div>
      <div class="card">Cloud Deployment Platform</div>
      <div class="card">3D Portfolio with Three.js</div>
    </div>
  </section>

  <section id="contact">
    <h3>Contact Me</h3>
    <p>Email: mayur@example.com | Phone: +91-1234567890</p>
  </section>

  <footer>
    &copy; 2025 Mayur Dalimbkar. All rights reserved.
  </footer>
</body>
</html>
