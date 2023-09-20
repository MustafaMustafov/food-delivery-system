package com.fooddelivery.fooddelivery.repositories;

import com.fooddelivery.fooddelivery.entities.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
}
