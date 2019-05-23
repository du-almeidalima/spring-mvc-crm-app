
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="../templates/header.jsp" />

        <h1 class="page-title">Add Customer</h1>
        <hr />

        <%-- We need to reference the modelAttribute that is being passed to this view in the form tag --%>
        <div class="app-container">
            <form:form action="add-customer" modelAttribute="customer" method="post">
                <label for="fname">First Name</label>
                <form:input path="firstName" type="text" id="fname" placeholder="Your name.." />

                <label for="lname">Last Name</label>
                <form:input path="lastName" type="text" id="lname" placeholder="Your last name.." />

                <label for="lname">Email</label>
                <form:input path="email" type="email" id="email" placeholder="Your email.." />


                <input type="submit" value="Submit">
            </form:form>
        </div>

<jsp:include page="../templates/footer.jsp" />
