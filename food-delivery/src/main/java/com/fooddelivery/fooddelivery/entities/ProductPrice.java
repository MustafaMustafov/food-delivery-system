package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class ProductPrice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_price_id")
    private Long id;
    @Column(name = "price")
    private double price;
    @Column(name = "for_quantity")
    private boolean forQuantity;
}
