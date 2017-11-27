<%--
  Created by IntelliJ IDEA.
  User: Grim
  Date: 2017-11-22
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<link rel="stylesheet" href="css/mystyle.css">
<head>
    <title>现场监控设备传输服务系统 - 登录</title>
</head>
<body>

<h1>现场监控设备传输服务系统</h1>
<form action="logincheck.jsp" method="post">
    账号: <label>
    <input type="text" name="username">
</label><br/>
    密码: <label>
    <input type="password" name="password">
</label><br/><br/>
    <input type="submit" value="登录" />
</form>

</body>
</html>
