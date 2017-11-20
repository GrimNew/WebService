<%--
  Created by IntelliJ IDEA.
  User: Grim
  Date: 2017-09-13
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<html>
  <head>
    <title>WebService</title>

      <%!
          private static final String url=
                  "jdbc:mysql://localhost:3306/inspection" +    //JDBC方式/MySQL数据库/本机/端口3306/数据库名称
                          "?useSSL=false&useUnicode=true&characterEncoding=utf8"; //SSL关闭/使用Unicode编码/编码方式utf-8
          private static final String user="root";
          private static final String password="root";
          private Connection connection;
      %>

  </head>
  <body>
  <%
      try {
          Class.forName("com.mysql.jdbc.Driver");   //反射加载驱动
          connection = DriverManager.getConnection(url,user,password);  //数据库连接实例化
          if (connection != null){
              out.println("连接成功！<br>");
          }else {
              out.println("连接失败！<br>");
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
          resultSet = statement.executeQuery("SELECT * FROM 巡检表");
          while (resultSet.next()){
              out.println("职工工号："+ resultSet.getString(1)+"\t设备编号："+ resultSet.getString(2)+"\t巡检时间："+ resultSet.getString(3)+"<br>");
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
