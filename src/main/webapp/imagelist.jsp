<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 1/16/2021
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
    <c:forEach items="${product}" var="p">
        <c:forEach items="${images}" var="i">
          <img src="images/products/${i}">
        </c:forEach>
    </c:forEach>
</div>
