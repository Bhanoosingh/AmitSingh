<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container" style="width:100%;">
        <section>
            <div class="jumbotron">
                <div class="container-fluid">
                    <h1>Your's Cart</h1>
                    <p>All  products in shopping cart</p>
                </div>
            </div>
       </section>

        <section class="container" ng-app="cartApp">

            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">

                <div>
                    <a class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
                </div>

                <br/><br/><br/>

                <table class="mytable" style="width:80%;border:1ps solid red;">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr style="height:50px;">
                        <th></th>
                        <th></th>
                        <th><h3 style="font-weight:underline;">Grand Total</h3></th>
                        <th><h3 style="font-weight:italic;">{{calGrandTotal()}}</h3></th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </section>
</div></div>
<!-- My -->
<br>
<br>
<script src="<c:url value="/resources/js/controller.js" /> "></script>

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>