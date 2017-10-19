<%--
  Created by IntelliJ IDEA.
  User: Christopher V M
  Date: 19-Oct-17
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="container">
    ${loginError}

    <div class="form-group form">
        <form action="/" method="post">
            <div>
                <label>Username:</label>
                <input type="text" id="userId" name="userId" placeholder="username" class="form-control"/>
            </div>
            <div>
                <label>Password:</label>
                <input type="password" id="pass" name="pass" placeholder="password" class="form-control"/>
            </div>
            <button id="loginButton" class="form-control">Login</button>
        </form>
    </div>
</div>
</body>
</html>
