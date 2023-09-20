package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "ROLES")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "role_id")
    private Long id;
    private String role;
}
