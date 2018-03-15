<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>your's registration is successfully.............</h1>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/productList" />" class="btn btn-default" style="color:black;">Go to Products</a></p>
        </section>
</div></div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>