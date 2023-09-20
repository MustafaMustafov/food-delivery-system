package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_id")
    private Long id;
    private String productName;
    private String productDescription;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_price_id")
    private ProductPrice price;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "food_category_id")
    private FoodCategory foodCategory;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "retailer_id")
    private Retailer retailer;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_inventory_id")
    private ProductInventory productInventory;

    private String SKU;
}
