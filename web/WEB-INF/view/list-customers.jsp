
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>List Customers</title>
    <style>
        table {
            width:100%;
        }
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        table#t01 tr:nth-child(even) {
            background-color: #eee;
        }
        table#t01 tr:nth-child(odd) {
            background-color: #fff;
        }
        table#t01 th {
            background-color: black;
            color: white;
        }
    </style>

</head>
<body>
    <h1>CRM - Customer Relationship Managemer </h1>

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