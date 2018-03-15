<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>

<br><br><br>
<style>

a:link {
    color: black;
}
</style>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>


        
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p><strong>Manufacturer</strong>: ${product.productManufacturer}</p>
                    <p><strong>Category</strong>: ${product.productCategory}</p>
                    <p><strong>Condition</strong>: ${product.productCondition}</p>
                    <p>${product.productPrice} &#8377;</p>

                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                        <a href="<c:url value = "${url}" />" class="btn btn-default">Back</a>
                        <c:if test="${userrole == '[ROLE_ANONYMOUS]'}">
                        <a href="${pageContext.request.contextPath}/customer/#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                        </c:if>
                        
                        <c:if test="${userrole == '[ROLE_USER]'}">
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"><span class="glyphicon glyphicon-shopping-cart"></span> Order Now</a>
                        <a href="<spring:url value="/customer/cart" />" class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span> View Cart</a>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                    <a style="color:blue" href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>Edit</a>
                    </c:if>
                    </p>

                </div>
            </div>
        </div>
</div></div>




<!-- My -->
<script src="<c:url value="/resources/js/controller.js?v3" /> "></script>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>
