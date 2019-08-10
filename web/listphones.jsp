<%@ page import="static com.googlecode.objectify.ObjectifyService.ofy" %>

<%@ page import="java.util.List" %>
<%@ page import="practical.Phone" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 8/10/2019
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Phone</title>
    <%
        List<Phone> phones = (List<Phone>) request.getAttribute("phones");
    %>
</head>
<body>


<c:forEach var="phone" items="${list}">
    <li><c:out value="${phone.name}"/> - <c:out value="${phone.brand}"/> -
        <c:out value="${phone.price}"/> - <c:out value="${phone.description}"/></li>
</c:forEach>
</body>
</html>
