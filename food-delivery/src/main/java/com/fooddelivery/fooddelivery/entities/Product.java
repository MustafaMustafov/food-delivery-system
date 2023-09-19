package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "PRODUCT_ID")
    private Long id;
    private String productName;
    private String productDescription;

    @OneToOne
    @JoinColumn(name = "PRODUCT_PRICE_ID")
    private ProductPrice price;

    @OneToOne
    @JoinColumn(name = "FOOD_CATEGORY_ID")
    private FoodCategory foodCategory;

    @OneToOne
    @JoinColumn(name = "RETAILER_ID")
    private Retailer retailer;

    @OneToOne
    @JoinColumn(name = "PRODUCT_INVENTORY_ID")
    private ProductInventory productInventory;

    private String SKU;
}
