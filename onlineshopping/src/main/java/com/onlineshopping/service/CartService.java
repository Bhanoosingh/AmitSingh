package com.onlineshopping.service;

import com.onlineshopping.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
