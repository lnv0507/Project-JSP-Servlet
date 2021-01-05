<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 1/4/2021
  Time: 1:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${image}" var="i">
    ${i}
</c:forEach>
</body>
</html>
