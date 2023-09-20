package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class ProductInventory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_inventory_id")
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "product_id")
    private Product product;

    private int quantity;
}
