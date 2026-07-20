<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>学习规划系统 - 登录</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }
    body {
      font-family: 'Microsoft YaHei', sans-serif;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 20px;
    }
    .login-container {
      background: white;
      border-radius: 24px;
      box-shadow: 0 30px 60px rgba(0,0,0,0.3);
      width: 580px;
      max-width: 100%;
      padding: 60px 55px;
      transition: transform 0.3s;
    }
    .login-container:hover {
      transform: translateY(-5px);
    }
    .login-container h2 {
      text-align: center;
      color: #333;
      font-size: 38px;
      margin-bottom: 15px;
    }
    .login-container .subtitle {
      text-align: center;
      color: #888;
      margin-bottom: 45px;
      font-size: 18px;
    }
    .form-group {
      margin-bottom: 30px;
    }
    .form-group label {
      display: block;
      margin-bottom: 12px;
      color: #555;
      font-size: 17px;
      font-weight: 500;
    }
    .form-group input {
      width: 100%;
      padding: 16px 18px;
      border: 2px solid #e0e0e0;
      border-radius: 14px;
      font-size: 17px;
      transition: all 0.3s;
    }
    .form-group input:focus {
      outline: none;
      border-color: #667eea;
      box-shadow: 0 0 0 4px rgba(102,126,234,0.15);
    }
    button {
      width: 100%;
      padding: 16px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      border: none;
      border-radius: 14px;
      font-size: 20px;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s;
      margin-top: 15px;
    }
    button:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(102,126,234,0.4);
    }
    .error-msg {
      background: #fed7d7;
      color: #c53030;
      padding: 14px;
      border-radius: 12px;
      margin-bottom: 30px;
      text-align: center;
      font-size: 15px;
    }
    .register-link {
      text-align: center;
      margin-top: 35px;
      color: #666;
      font-size: 16px;
    }
    .register-link a {
      color: #667eea;
      text-decoration: none;
      font-weight: bold;
    }
    .register-link a:hover {
      text-decoration: underline;
    }
    @media (max-width: 640px) {
      .login-container { padding: 40px 30px; }
      .login-container h2 { font-size: 30px; }
      .form-group input { padding: 14px; font-size: 15px; }
      button { padding: 14px; font-size: 18px; }
    }
  </style>
</head>
<body>
<div class="login-container">
  <h2>📚 学习规划系统</h2>
  <div class="subtitle">欢迎登录</div>

  <%
    String errorMsg = (String) request.getAttribute("errorMsg");
    if (errorMsg != null) {
  %>
  <div class="error-msg"><%= errorMsg %></div>
  <% } %>

  <form action="<%= request.getContextPath() %>/login" method="post">
    <div class="form-group">
      <label>用户名</label>
      <input type="text" name="username" placeholder="请输入用户名" required autofocus>
    </div>
    <div class="form-group">
      <label>密码</label>
      <input type="password" name="password" placeholder="请输入密码" required>
    </div>
    <button type="submit">登 录</button>
  </form>

  <div class="register-link">
    还没有账号？ <a href="<%= request.getContextPath() %>/register">立即注册</a>
  </div>
</div>
</body>
</html>