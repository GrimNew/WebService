<%--
  Created by IntelliJ IDEA.
  User: Grim
  Date: 2017-11-22
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/theme.css" type="text/css">
    <title>现场监控设备传输服务系统 - 登录</title>
</head>
<body class="">
<div class="py-5 border border-light h-100 mx-auto" style="background-image: url(image/backgroundImage.jpg);">
    <div class="container">
        <div class="row h-75">
            <div class="align-self-center col-md-6 text-white">
                <h1 class="text-center text-md-left display-3">现场监控设备<br>&nbsp; &nbsp; &nbsp;传输服务系统</h1>
                <p class="lead"><br>Transmission and Service System Based on Feild Monitoring Equipments<br>Power by Pingendo 4 Based on Bootstrap 4.0<br>Created by Grim in 2017/12/05</p>
            </div>
            <div class="col-md-6 h-100" id="book" style="left: 10%; top: 20%;">
                <div class="" style="">
                    <div class="card-body opaque-overlay text-light p-5 m-5">
                        <h3 class="pb-3">登录</h3>
                        <form action="logincheck.jsp" method="post">
                            <div class="form-group"> <label>账  号</label>
                                <input type="text" class="form-control" name="username" placeholder="请输入账号"> </div>
                            <div class="form-group"> <label>密  码</label>
                                <input type="password" class="form-control" name="password" placeholder="请输入密码"> </div>

                            <button type="submit" class="btn mt-2 btn-block btn-outline-light">登  录</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>
