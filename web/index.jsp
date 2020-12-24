<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2020-12-21
  Time: 上午 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

    <a href="emps">LIST ALL EMPS</a><br/><br/>

    <a href="testJson">TEST JSON</a><br/><br/>

    <a href="download">下载照片</a><br/><br/>

    <form action="upload" method="post" enctype="multipart/form-data">
      上传文件：<input type="file" name="uploadFile"/><br/><br/>
      文件描述：<input type="text" name="desc"/><br/><br/>
      <input type="submit" value="上传"/>
    </form><br/>


    <a href="testInterceptor">TEST INTERCEPTOR</a>

  </body>
</html>
