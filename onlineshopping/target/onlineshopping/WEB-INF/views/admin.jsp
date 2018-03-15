
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Admin page</h1>

            <p class="lead">Welcome administrator page!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome: ${pageContext.request.userPrincipal.name} |
                
            </h2>

        </c:if>

        <h3>
            
        </h3>

        <p>Manage Product</p>

        <br/><br/>

        <h3>
            <a href="<c:url value="/admin/customer" /> ">Manage Customer</a> 
        </h3>

        <p>View Customer</p>
        </div>
        </div>
</body>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>