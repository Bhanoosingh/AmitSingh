<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>
<br><br><br>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill Details</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                
                 <form:input path="productName" id="name" class="form-control" placeholder="Product Name"/>
            </div>
			
    
            <div class="form-group">
                <label for="category">Category</label>
               <form:input path="productCategory" id="category" class="form-control" placeholder="Category"/>
              
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" class="form-control" placeholder="Product Discription" aria-label="With textarea"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:input path="productPrice" id="price" type="text" class="form-control" placeholder="Price"/>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
               <form:input path="productCondition" id="condition" type="text" class="form-control" placeholder="Promo code"/>
           
            </div>

            <div class="form-group">
                <label for="status">Status</label>
               <form:input path="productStatus" id="status" type="text" class="form-control" placeholder="Promo code"/>
           
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label>
                <form:input path="unitInStock" id="unitInStock"  type="text" class="form-control" placeholder="Promo code"/>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
               
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" type="text" class="form-control" placeholder="Promo code"/>
                
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>
</div>
</div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>