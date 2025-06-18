<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>3D Personal Portfolio</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            font-family: 'Segoe UI', sans-serif;
            overflow: hidden;
            color: white;
        }

        .container {
            display: flex;
            height: 100vh;
            width: 100%;
            padding: 2rem;
            align-items: center;
            justify-content: space-between;
            position: relative;
        }

        .avatar {
            width: 300px;
            height: 300px;
            background: radial-gradient(circle at center, #0ff 10%, #00f 80%);
            border-radius: 50%;
            box-shadow: 0 0 60px rgba(0, 255, 255, 0.5);
            animation: float 6s ease-in-out infinite;
            transform-style: preserve-3d;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotateY(0deg); }
            50% { transform: translateY(-20px) rotateY(180deg); }
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 2rem;
            width: 300px;
            margin: 1rem;
            backdrop-filter: blur(12px);
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.2);
            transition: transform 0.3s ease;
        }

        .glass-card:hover {
            transform: scale(1.05) rotateY(5deg);
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 2rem;
        }

        h2 {
            color: #00ffff;
            margin-bottom: 1rem;
        }

        p {
            font-size: 1rem;
            color: #ccc;
        }

        .stars {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://www.transparenttextures.com/patterns/stardust.png');
            animation: moveStars 100s linear infinite;
            z-index: -1;
        }

        @keyframes moveStars {
            0% { background-position: 0 0; }
            100% { background-position: 10000px 10000px; }
        }
    </style>
</head>
<body>
    <div class="stars"></div>
    <div class="container">
        <div class="avatar"></div>
        <div class="cards">
            <div class="glass-card">
                <h2>About Me</h2>
                <p>I'm a creative developer with a focus on 3D UI, animations, and immersive user experiences.</p>
            </div>
            <div class="glass-card">
                <h2>Skills</h2>
                <p>HTML, CSS, JavaScript, Three.js, GSAP, Blender, WebGL</p>
            </div>
            <div class="glass-card">
                <h2>Projects</h2>
                <p>Interactive 3D portfolios, animated websites, and immersive story-driven pages.</p>
            </div>
            <div class="glass-card">
                <h2>Contact</h2>
                <p>Email: yourname@example.com<br>Phone: +91-1234567890</p>
            </div>
        </div>
    </div>
</body>
</html>
