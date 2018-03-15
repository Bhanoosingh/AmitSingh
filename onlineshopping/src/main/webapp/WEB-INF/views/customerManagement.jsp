<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container" style="width:100%;">
        <div class="page-header">
            <h1>Manage Customer</h1>

            <p class="lead">Welcome in Customer handle page</p>
        </div>

        <table class="mytable" style="width:100%;">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>
</div>
</div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>