<%--
  Created by IntelliJ IDEA.
  User: Christopher V M
  Date: 19-Oct-17
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>

<body style="background-color: snow;">

<style type="text/css">
    #element1 {float:left;}
    #element2 {float:right;}
</style>

<div id="element1">
    <h1 style="color: blue;">
        <b>WELCOME</b>
    </h1>
</div>
<div id="element2">
    <div style="float: right">
        <p>Hello ${loggedInUser}</p>
        <a href="logout">Logout</a>
    </div>
</div>

</body>
</html>
