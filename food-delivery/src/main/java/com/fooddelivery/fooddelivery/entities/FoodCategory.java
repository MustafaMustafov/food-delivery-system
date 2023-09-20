package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class FoodCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "food_category_id")
    private Long id;
    private String category;
    private String description;
}
