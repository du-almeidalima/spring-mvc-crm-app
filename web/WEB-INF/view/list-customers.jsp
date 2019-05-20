
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>My Spring CRM</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/style.css">
</head>
<body>
    <div class="container">

        <%-- Navbar --%>
        <nav>
            <div class="nav-title">My Spring CRM</div>
            <ul class="nav-group-items">
                <li class="nav-item">About</li>
                <li class="nav-item">Home</li>
                <li class="nav-item">Customers</li>
                <li class="nav-item">Something</li>
            </ul>
        </nav>

        <h1 class="page-title">Customers</h1>
        <hr />

        <div class="app-container">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                </tr>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.firstName}</td>
                        <td>${customer.lastName}</td>
                        <td>${customer.email}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>
</body>
</html>

<%--
JSTL é o acrônimo de JavaServer Pages Standard Template Library, o qual podemos usar para recuperar dados de forma
transparente usando como componente básico da JEE o qual é muito usado na programação pura,
como costumo chamar quando programamos diretamente e tão somente no JSP (Java Server Pages).

https://www.devmedia.com.br/introducao-jstl-java/23582

The absolute uri: [http://java.sun.com/jsp/jstl/core] cannot be resolved in either web.xml or the jar files deployed with this application
To fix this error just import the 2 files from Tomcat 9.0\webapps\examples\WEB-INF\lib to project
--%>