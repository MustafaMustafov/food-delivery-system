package com.fooddelivery.fooddelivery.entities;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "USER_ID")
    private Long id;

    private String username;

    private String password;

    @OneToOne
    @JoinColumn(name = "ROLE_ID")
    private Role role;
}
