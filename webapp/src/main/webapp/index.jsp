<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Mayur Dalimbkar | Portfolio</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    html, body {
      height: 100%;
      overflow: hidden;
      font-family: 'Segoe UI', sans-serif;
      background: black;
    }

    #bg {
      position: absolute;
      top: 0;
      left: 0;
      z-index: 0;
    }

    .overlay {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      color: #00ffff;
      text-align: center;
      z-index: 1;
      backdrop-filter: blur(10px);
      background: rgba(0, 255, 255, 0.05);
      padding: 2rem;
      border-radius: 20px;
      box-shadow: 0 0 40px rgba(0, 255, 255, 0.2);
    }

    .overlay h1 {
      font-size: 3rem;
      margin-bottom: 1rem;
    }

    .overlay p {
      font-size: 1.2rem;
      color: #ccc;
    }

    .overlay button {
      margin-top: 2rem;
      padding: 10px 30px;
      font-size: 1rem;
      color: black;
      background-color: #00ffff;
      border: none;
      border-radius: 30px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .overlay button:hover {
      background-color: #00cccc;
    }
  </style>
</head>
<body>
  <canvas id="bg"></canvas>

  <div class="overlay">
    <h1>Mayur Dalimbkar</h1>
    <p>DevOps Engineer | Cloud | Automation | SRE</p>
    <button>Explore Portfolio</button>
  </div>

  <!-- THREE.JS via CDN -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r148/three.min.js"></script>
  <script>
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(75, window.innerWidth/window.innerHeight, 0.1, 1000);
    const renderer = new THREE.WebGLRenderer({ canvas: document.getElementById('bg'), alpha: true });
    renderer.setSize(window.innerWidth, window.innerHeight);
    document.body.appendChild(renderer.domElement);

    // Add stars
    const starGeo = new THREE.BufferGeometry();
    const starCount = 1000;
    const positions = [];

    for (let i = 0; i < starCount; i++) {
      positions.push((Math.random() - 0.5) * 2000);
      positions.push((Math.random() - 0.5) * 2000);
      positions.push((Math.random() - 0.5) * 2000);
    }

    starGeo.setAttribute('position', new THREE.Float32BufferAttribute(positions, 3));

    const starMat = new THREE.PointsMaterial({
      color: 0x00ffff,
      size: 1,
      transparent: true,
      opacity: 0.7,
    });

    const stars = new THREE.Points(starGeo, starMat);
    scene.add(stars);

    camera.position.z = 1;

    const animate = () => {
      requestAnimationFrame(animate);
      stars.rotation.y += 0.0005;
      stars.rotation.x += 0.0003;
      renderer.render(scene, camera);
    };

    animate();

    window.addEventListener('resize', () => {
      camera.aspect = window.innerWidth / window.innerHeight;
      camera.updateProjectionMatrix();
      renderer.setSize(window.innerWidth, window.innerHeight);
    });
  </script>
</body>
</html>
