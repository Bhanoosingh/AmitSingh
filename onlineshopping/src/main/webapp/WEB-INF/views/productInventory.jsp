<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container" style="width:100%;">
        <div class="page-header">
            <h1>Product  Page</h1>


            

        <table style="width:100%;">
           <thead>
            <tr class="bg-success" align="center">
                <td><h1> Images</h1></td>
                <th>Product Name</th>
                <th>Product Category</th>
                <th>Product Description</th>
                <th>Product Manufaturer</th>
                <th>Product Condition</th>
                <th>Product Price</th>
                <th>Unit Stock</th>
                <th>Action</th>
            </tr>
            </thead> 
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width:50%"/></td>
   
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productDescription}</td>
                    <td>${product.productManufacturer}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} INR </td>
                    <td>${product.unitInStock}</td>
                    <td>
                        <a style="color:blue" href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>View</a>
                        <a style="color:blue" href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-trash"></span>Delete</a>
                        <a style="color:blue" href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span>Edit</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br>
         <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
</div></div></div>
       

<%@ include file="/WEB-INF/views/templates/footer.jsp" %>