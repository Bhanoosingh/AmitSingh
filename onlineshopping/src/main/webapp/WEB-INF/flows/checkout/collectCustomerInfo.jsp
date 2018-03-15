<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/templates/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.customer.customerName" id="name" type="text" class="form-control" placeholder="Name"/>
            
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" type="text" class="form-control" placeholder="Email"/>
            
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="cart.customer.customerPhone" id="phone" type="text" class="form-control" placeholder="Phone"/>
            
        </div>

        <br/>

        <h3>Billing Address:</h3>

        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" type="text" class="form-control" placeholder="Street Name"/>
            
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" type="text" class="form-control" placeholder="Apartment Number"/>
           
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" type="text" class="form-control" placeholder="City"/>
           
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState"  type="text" class="form-control" placeholder="State"/>
            
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" type="text" class="form-control" placeholder="Country"/>
            
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip"  type="text" class="form-control" placeholder="Zipcode"/>
            
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
</div></div>
<%@ include file="/WEB-INF/views/templates/footer.jsp" %>