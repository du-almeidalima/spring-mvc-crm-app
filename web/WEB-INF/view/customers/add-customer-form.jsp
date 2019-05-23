
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../templates/header.jsp" />

        <h1 class="page-title">Add Customer</h1>
        <hr />

        <div class="app-container">
            <form action="/add">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="firstname" placeholder="Your name..">

                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lastname" placeholder="Your last name..">

                <label for="lname">Email</label>
                <input type="email" id="email" name="lastname" placeholder="Your email..">


                <input type="submit" value="Submit">
            </form>
        </div>

<jsp:include page="../templates/footer.jsp" />
