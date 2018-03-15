<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank's for Order..</h1>

                    <p>Your order will be shipped in two business days.</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-default">Done</a></p>
        </section>
</div></div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>