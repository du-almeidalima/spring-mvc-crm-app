
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Spring CRM</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css">
    <c:if test="${fn:contains(pageContext.request.getRequestURI(), 'customer')}">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/customer.css">
    </c:if>

</head>
<body>
    <div class="container">

        <%-- Navbar --%>
        <nav>
            <div class="nav-title">My Spring CRM</div>
            <ul class="nav-group-items">
                <li class="nav-item" id="about"><a href="#">About</a></li>
                <li class="nav-item" id="home"><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li class="nav-item" id="customer"><a href="${pageContext.request.contextPath}/customer/list">Customers</a></li>
                <li class="nav-item" id="me"><a href="${pageContext.request.contextPath}/me">Me</a></li>
            </ul>
        </nav>