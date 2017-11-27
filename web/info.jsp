<%--
  Created by IntelliJ IDEA.
  User: Grim
  Date: 2017-11-24
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<link rel="stylesheet" href="css/infostyle.css">
<html>
<head>
    <title>现场监控设备传输服务系统 - 信息查看</title>

    <%!
        private static final String url=
                "jdbc:mysql://localhost:3306/monitor" +    //JDBC方式/MySQL数据库/本机/端口3306/数据库名称
                        "?useSSL=false&useUnicode=true&characterEncoding=utf8"; //SSL关闭/使用Unicode编码/编码方式utf-8
        private static final String dbuser="root";
        private static final String dbpassword="root";
        private Connection connection;
    %>

</head>
<body>
<%=session.getAttribute("username") %>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");   //反射加载驱动
        connection = DriverManager.getConnection(url,dbuser,dbpassword);  //数据库连接实例化
        if (connection == null){
            out.println("异常：数据库连接失败！<br>");
        }
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>

<%
    Statement statement = null;
    ResultSet resultSet = null;
    try {
        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT * FROM data_table");
        while (resultSet.next()){
            out.println("设备编号："+ resultSet.getString(1)+"\t数字量："+ resultSet.getString(2)+
                            "\t，模拟量："+ resultSet.getString(3)+"\t，采集时间："+ (resultSet.getTimestamp(4))+"<br>");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

<%
    try {
        if (resultSet != null) {
            resultSet.close();
        }
        if (statement != null) {
            statement.close();
        }
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

</body>
</html>