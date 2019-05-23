
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../templates/header.jsp" />

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

        <a href="${pageContext.request.contextPath}/customer/add-customer-form" class="customer-add-btn">
            <img src="https://ssl.gstatic.com/bt/C3341AA7A1A076756462EE2E5CD71C11/2x/btw_ic_speeddial_white_24dp_2x.png" alt="+" />
        </a>
<jsp:include page="../templates/footer.jsp" />

<%--
JSTL é o acrônimo de JavaServer Pages Standard Template Library, o qual podemos usar para recuperar dados de forma
transparente usando como componente básico da JEE o qual é muito usado na programação pura,
como costumo chamar quando programamos diretamente e tão somente no JSP (Java Server Pages).

https://www.devmedia.com.br/introducao-jstl-java/23582

The absolute uri: [http://java.sun.com/jsp/jstl/core] cannot be resolved in either web.xml or the jar files deployed with this application
To fix this error just import the 2 files from Tomcat 9.0\webapps\examples\WEB-INF\lib to project
--%>