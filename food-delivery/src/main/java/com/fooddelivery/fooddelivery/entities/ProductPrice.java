package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class ProductPrice {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_price_id")
    private Long id;

    @OneToOne
    @JoinColumn(name = "product_id")
    private Product product;

    private double price;
    private boolean forQuantity;
}
