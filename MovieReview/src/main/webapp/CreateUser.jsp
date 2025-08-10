<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Create User</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap');
  
  body, html {
    margin: 0; padding: 0;
    height: 100%;
    font-family: 'Poppins', sans-serif;
    overflow: hidden;
    background: linear-gradient(270deg, #6a8cd4, #b796d9, #9a85ca, #7465a1);
    background-size: 800% 800%;
    animation: gradientAnimate 25s ease infinite;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  @keyframes gradientAnimate {
    0%{background-position:0% 50%}
    50%{background-position:100% 50%}
    100%{background-position:0% 50%}
  }

  #particles {
    position: fixed;
    top: 0; left: 0; right: 0; bottom: 0;
    pointer-events: none;
    overflow: hidden;
    z-index: 0;
  }
  .particle {
    position: absolute;
    border-radius: 50%;
    background: rgba(255,255,255,0.12);
    animation: floatUp 15s linear infinite;
  }
  @keyframes floatUp {
    0% { transform: translateY(100vh) scale(0.6); opacity: 1; }
    100% { transform: translateY(-20vh) scale(1); opacity: 0; }
  }

  .form-card {
    position: relative;
    background: rgba(255, 255, 255, 0.96);
    border-radius: 22px;
    box-shadow: 0 18px 45px rgba(0,0,0,0.25);
    padding: 40px 36px 48px;
    width: 380px;
    z-index: 1;
    text-align: center;
  }
  .form-card h2 {
    margin-bottom: 24px;
    font-size: 2rem;
    color: #3b1d90;
    font-weight: 600;
    letter-spacing: 1px;
  }

  label {
    display: block;
    text-align: left;
    font-weight: 600;
    color: #555273;
    margin: 16px 0 6px 0;
    font-size: 1rem;
  }
  input[type="text"], input[type="email"], input[type="password"] {
    width: 100%;
    padding: 12px 14px;
    border: 2px solid #cac3e2;
    border-radius: 12px;
    font-size: 1.05rem;
    transition: all 0.3s ease;
    box-sizing: border-box;
  }
  input:focus {
    outline: none;
    border-color: #685cd4;
    box-shadow: 0 0 14px #685cd4aa;
  }

  input[type="submit"] {
    margin-top: 28px;
    width: 100%;
    background: #6a65d6;
    border: none;
    border-radius: 14px;
    color: white;
    font-size: 1.2rem;
    font-weight: 700;
    padding: 14px 0;
    cursor: pointer;
    box-shadow: 0 10px 28px #6a65d6cc;
    transition: background 0.3s ease, box-shadow 0.3s ease;
  }
  input[type="submit"]:hover {
    background: #5049b6;
    box-shadow: 0 14px 36px #5049b6dd;
  }

  @media (max-width: 400px) {
    .form-card {
      width: 90vw;
      padding: 30px 24px 36px;
    }
    .form-card h2 {
      font-size: 1.6rem;
    }
  }
</style>
</head>
<body>

<div id="particles"></div>

<div class="form-card">
  <h2>Create User</h2>
  <form action="/MovieReview/CreateUser" method="post" autocomplete="off">
    <label for="UserName">User Name</label>
    <input type="text" id="UserName" name="UserName" required>

    <label for="Email">Email</label>
    <input type="email" id="Email" name="Email" required>

    <label for="Password">Password</label>
    <input type="password" id="Password" name="Password" required>

    <input type="submit" value="Create">
  </form>
</div>

<script>
  const particlesContainer = document.getElementById('particles');
  const particleCount = 30;
  for (let i = 0; i < particleCount; i++) {
    const p = document.createElement('div');
    p.classList.add('particle');
    const size = (Math.random() * 40 + 20).toFixed(2);
    p.style.width = `${size}px`;
    p.style.height = `${size}px`;
    p.style.left = `${Math.random() * 100}vw`;
    p.style.animationDuration = `${10 + Math.random() * 10}s`;
    p.style.animationDelay = `${Math.random() * 15}s`;
    particlesContainer.appendChild(p);
  }
</script>

</body>
</html>
