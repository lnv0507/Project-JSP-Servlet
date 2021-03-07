<%--
  Created by IntelliJ IDEA.
  User: Nguyen Viet Lam
  Date: 1/5/2021
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
<c:forEach items="${product}" var="p">
    <img src="images/products/${p.getImages().get(0)}" alt="">
</c:forEach>
</div>