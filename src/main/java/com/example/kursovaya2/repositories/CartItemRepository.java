package com.example.kursovaya2.repositories;

import com.example.kursovaya2.models.CartItem;
import com.example.kursovaya2.models.Product;
import com.example.kursovaya2.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CartItemRepository extends JpaRepository<CartItem, Long> {
    CartItem findByUserAndProduct(User user, Product product);
}

