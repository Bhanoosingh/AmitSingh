var app = angular.module('myApp', []);
app.controller('productCtrl', function($scope, $http) {
	$http.get("/dt/getallp").then(function(response) {
		$scope.myData = response.data;

	});
	$scope.orderByMe = function(x) {
		$scope.myOrderBy = x;
	}
});

app.controller("cartCtrl", function($scope, $http) {

	$scope.refreshCart = function() {
		$http.get('/dt/customer/rest/cart/' + $scope.cartId).success(
				function(data) {
					$scope.cart = data;
				});
	};

	
	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};

	$scope.addToCart = function(productId) {
		
		$http.put('/dt/customer/rest/cart/add/' + productId).success(
				function() {
					alert('Product successfully added to the cart!');
				});
	};

	$scope.removeFromCart = function(productId) {
		$http.put('/dt/customer/rest/cart/remove/' + productId).success(
				function(data) {
					$scope.refreshCart();
				});
	};

	$scope.calGrandTotal = function() {
		var grandTotal = 0;

		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal += $scope.cart.cartItems[i].totalPrice;
		}

		return grandTotal;
	}
});