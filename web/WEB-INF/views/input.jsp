<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2020-12-20
  Time: 下午 07:30
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <%--Springmvc的表单标签
        1.可以快速的开发表单
        2.可以更加方便的回显数据


        Springmvc表单标签遇到的问题：
        Neither BindingResult nor plain target object for bean
        name 'command' available as request attribute

        问题原因：Springmvc的表单标签必须要进行数据的回显。默认会使用”command"这个key到request中
            找回显数据，如果找不到，则抛出异常

        问题解决：让Springmvc可以通过"command"从request中找到要回显的数据
            还可以通过modelAttribute来指定一个Key替换默认的command


        表单标签在最终执行时会转化成原始的HTML标签

    --%>
    <form:form action="${pageContext.request.contextPath}/emp" method="post" >

        <%--判断是添加操作还是修改操作
            根据回显的Employee对象的id值来判断：如果有id就是修改，如果没有id就是添加操作
        --%>

        <c:if test="${!empty employee.id}" var="flag">
            <%--修改操作--%>
            <form:hidden path="id"/>
            <%--隐藏PUT--%>
            <input type="hidden" name="_method" value="PUT"/>
        </c:if>




        <%--<input type="text" name="lastName"/>--%>
        <%--path就相当于HTML中input标签中的name属性--%>
        LASTNAME：<form:input path="lastName"/><br/>
        EMAIL：<form:input path="email"/><br/>
        <%--radiobuttons可以根据Map数据来生成单选框--%>
        GENDER：<form:radiobuttons path="gender" items="${genders}"/><br/>
        DEPTNAME：<form:select path="department.id" items="${depts}" itemLabel="departmentName" itemValue="id"/><br/>

                <%--<select name="department.id">--%>
                    <%--<option value="1">开发部</option>--%>
                    <%--<option value="2">测试部</option>--%>
                <%--</select>--%>



        <c:if test="${flag}">
            <input type="submit" value="EDIT"/>
        </c:if>
        <c:if test="${!flag}">
            <input type="submit" value="ADD"/>
        </c:if>
    </form:form>

</body>
</html>
